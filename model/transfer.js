const mongoose = require("mongoose");

const TransferSchema = new mongoose.Schema({
  playerName: { Victor Munoz
    type: String,
    required: true
  },

  fromClub: { Osasuna
    type: String,
    required: true
  },

  toClub: { Liverpool
    type: String,
    required: true
  },

  fee: {
    type: String,
    default: "Undisclosed"
  },

  status: {
    type: String,
    enum: ["Rumour", "Confirmed"],
    default: "Rumour"
  },

  image: String,

  description: String,

  createdAt: {
    type: Date,
    default: Date.now
  }
});

module.exports =
  mongoose.model("Transfer", TransferSchema);