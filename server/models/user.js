const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
  email: {
    required: true,
    type:String,
    trim: true,
    match: [
      /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
      'Please provide a valid email',
    ],
    // validate: {
    //   validator: (value) => {
    //     const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    //     return value.match(re)
    //   },
    //   message: "Molimo Vas da unesete ispravnu email adresu."
    // }
  },
  password: {
    required: true,
    type: String
  }
});

const User = mongoose.model("User", userSchema);
module.exports = User;

