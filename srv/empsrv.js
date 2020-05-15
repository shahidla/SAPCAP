const cds = require("@sap/cds");
//const {  Orderheaders } = cds.entities("ns");

module.exports["empservice"] = srv => {
  srv.on("READ", "GetEmpMain", (req, res) => {
    console.log("GetEmpMain");
  });

  srv.on("READ", "GetEmpInfo", (req, res) => {
    console.log("GetEmpInfo");
  });


};
