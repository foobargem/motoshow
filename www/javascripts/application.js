// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var SMS = {
  //baseURL: "http://localhost:3001"
  baseURL: "http://2011sms.top-rider.com"
};

SMS.API = {
  Company: {
    indexURL: function(category) {
      return SMS.baseURL + '/companies.json?category=' + category;
    },
    showURL: function(id) {
      return SMS.baseURL + '/companies/' + id + '.json';
    }
  },

  Video: {
    indexURL: function() {
      return SMS.baseURL + "/videos.json";
    }
  }

};

