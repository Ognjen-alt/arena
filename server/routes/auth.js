const express = require("express")
const bcryptjs = require("bcryptjs");
const jwt = require("jsonwebtoken");
const User = require("../models/user");

const authRouter = express.Router()


// Prijava novog korisnika
authRouter.post("/api/signup", async (req, res) => {
  try {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "Korisnik sa istim imejlom već postoji!" });
    }

    const hashedPassword = await bcryptjs.hash(password, 8);

    let user = new User({
      email,
      password: hashedPassword
    });

    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Prijavljivanje postojećeg korisnika (log in)
authRouter.post("/api/login", async (req, res) => {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ email });
    
    const userEmail = user.email;
    const userPassword = user.password;

    if (!user) {
      return res
        .status(400)
        .json({msg: "Korisnik sa ponuđenom imejl adresom ne postoji."})
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch || email != userEmail) {
      return res.status(400).json({ msg: "Netačni podaci. Pokušajte ponovo." });
    }

    const token = jwt.sign({ id: user._id }, "supersecretkey");
    res.json({ token, ...user._doc });

  } catch (error) {
    res.status(500).json({error: e.message})
  }
})

module.exports = authRouter;