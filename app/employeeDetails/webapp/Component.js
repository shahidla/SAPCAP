sap.ui.define(["sap/fe/core/AppComponent"], capm =>
capm.extend("employeeDetails.Component", {
    metadata: { manifest: "json" },
    onAfterRendering:function(){
      
      this.getbot();      
      },
      getbot: function(){
        if (! document.getElementById("chatbotint")){
          var oElement = document.createElement("script");
          oElement.setAttribute("id","chatbotint");
          oElement.setAttribute("src","https://cdn.cai.tools.sap/webchat/webchat.js");
          oElement.setAttribute("channelId","788ccbdf-4382-4bd8-9819-2e16df1dbbb8");
          oElement.setAttribute("token","8d30618113556510e2102a256089e0c3");
          document.body.appendChild(oElement);
        }
      }


  })
);
