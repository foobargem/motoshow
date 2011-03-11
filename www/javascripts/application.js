// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var SMS = {
  baseURL: "http://localhost:3001"
  //baseURL: "http://2011sms.top-rider.com"
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

  Car: {
    indexURL: function() {
      return SMS.baseURL + "/cars.json";
    },
    galleryURL: function() {
      return SMS.API.Photo.indexURL('car');
    },
    showURL: function(id) {
      return SMS.baseURL + "/cars/" + id + ".json";
    }
  },

  Video: {
    indexURL: function() {
      return SMS.baseURL + "/videos.json";
    }
  },

  Photo: {
    indexURL: function(category) {
      var path = '/photos.json?category=' + category;
      return SMS.baseURL + path;
    },
    indexURLWithModelsByCompany: function(company_id) {
      var path = '/photos/models_by_company.json?company_id=' + company_id;
      return SMS.baseURL + path;
    },
    showURL: function(id) {
      return SMS.baseURL + "/photos/" + id + ".json";
    }
  },

  RacingModel: {
    indexURL: function() {
      return SMS.baseURL + "/racing_models.json";
    },
    galleryURL: function(company_id) {
      if (company_id && company_id.trim() != "") {
        return SMS.API.Photo.indexURLWithCompanyId(company_id);
      } else {
        return SMS.API.Photo.indexURL('racing_model');
      }
    },
    showURL: function(id) {
      return SMS.baseURL + "/racing_models/" + id + ".json";
    }
  }

};

