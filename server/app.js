const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth")


const app = express();
const port = process.env.PORT || 3000;
const DB = "mongodb+srv://ogi:SZGr0gTSo86DD1u4@cluster0.liziq8w.mongodb.net/?retryWrites=true&w=majority"

//middleware
app.use(express.json())
app.use(authRouter);


mongoose
  .connect(DB)
  .then(() => console.log("Veza sa bazom upostavljena je uspješno."))
  .catch(e => console.log(e));

app.listen(port, "0.0.0.0", () => {
  console.log(`Server sluša na portu ${port}`);
})

