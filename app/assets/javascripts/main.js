//Home.html.erb
$(document).ready(function () {
  $(window).on('mousemove mousewheel', function() {
    // console.log('move', $('section').first().position().top)
    if ($('section').first().position().top < -396) {
        $(".button-container").hide();
    } else {
      $(".button-container").show();
    }

    if ($('section').first().position().top < -996) {
        $(".scroll-down").hide();
    } else {
      $(".scroll-down").show();
    }
  });
});


// Show.html.erb (Doctors)
// Journals/BBC APIs

let authorList = "";
let indexStart = 0;
let indexEnd = 0;

const findAuthors = function (authors) {
  for (let i = 0; i < authors.length; i++) {
    authorList += authors[i].creator;
  };
  return authorList;
};

//Formatted date fo ajax search
const date = function () {

  let today = new Date();
  let dd = today.getDate();
  let mm = today.getMonth()+1; //January is 0!
  let yyyy = today.getFullYear();

  if(dd < 10) {
      dd = '0'+ dd
  };

  if(mm < 10) {
      mm = '0'+ mm
  };

  // today = mm + '/' + dd + '/' + yyyy;
  today = yyyy + '-' + mm + '-' + dd;

  return today;
};

//Formatted date for view
const dateNow = function () {

  let now = new Date();
  let dd = now.getDate();
  let mm = now.getMonth()+1; //January is 0!
  let yyyy = now.getFullYear();

  if(dd < 10) {
      dd = '0'+ dd
  };

  if(mm < 10) {
      mm = '0'+ mm
  };

  now = mm + '/' + dd + '/' + yyyy;


  return now;
};


//To pick 5 different journal indicies (0-100) on each refresh
const randomNumberIndex = function () {
  //Returns a number between 0 and 100
  indexStart = Math.floor(Math.random() * 100);
  indexEnd = indexStart + 5;
};


const fetch = function (e) {
  e.preventDefault();
  // console.log("before query");
  const query = $('#query').val();
  // console.log("after query", query);

  $.getJSON(`http://api.springer.com/meta/v1/json?api_key=b9ab99a51faec6511d70c08f878cfc61&q=keyword%3A${ query }&s=1&p=100`).done(function (info) {
    //Generate random number to index search
    randomNumberIndex();
    console.log(indexStart);
    console.log(indexEnd);

    for (let i = indexStart; i < indexEnd; i++) {
      //Title and URL
      const title = info.records[i].title;
      const url = info.records[i].url[0].value;
      $('.journal').append(`<h3> <a href="${url}">${title}</a> </h3>`);

      //Authors
      const authors = info.records[i].creators;
      findAuthors(authors);
      $('.journal').append(`<p>${authorList}</p>`);
      authorList = "";

      //Publication Date
      const pubDate = info.records[i].onlineDate;
      $('.journal').append(`<p>${pubDate}</p>`);

      //Abstract
      const abstract = info.records[i].abstract;
      $('.journal').append(`<p>${abstract}</p>`);
    };

  }).fail(function () {
      alert("There was a problem with your request, please try again!");
  });
};


$(document).ready(function () {
  $('#journal-search').on('submit', fetch);
  $('.journal2').append(`<h2>${ dateNow() }</h2>`);
  $.getJSON(`http://api.springer.com/meta/v1/json?api_key=b9ab99a51faec6511d70c08f878cfc61&q=date%3A${ date() }&s=1&p=10`).done(function (info) {

    //Loop through the number records array
    for (let i = 0; i < info.records.length; i++) {
      //Title and URL
      const title = info.records[i].title;
      const url = info.records[i].url[0].value;
      $('.journal2').append(`<h3> <a href="${url}">${title}</a> </h3>`);

      //Authors
      const authors = info.records[i].creators;
      findAuthors(authors);
      $('.journal2').append(`<p>${authorList}</p>`);
      authorList = "";

      //Publication Date
      const pubDate = info.records[i].onlineDate;
      $('.journal2').append(`<p>${pubDate}</p>`);

      //Abstract
      const abstract = info.records[i].abstract;
      $('.journal2').append(`<p>${abstract}</p>`);
    };
  });

  $.getJSON(`https://newsapi.org/v2/everything?q=health&medical&sources=bbc-news&from=${ date() }&sortBy=popularity&apiKey=c677e35803a54ffca44704f1ff1e7c5d`).done(function (info) {

    for (let i = 0; i < info.articles.length; i++) {
      //Title and URL link
      const title = info.articles[i].title;
      const url = info.articles[i].url;
      $('.bbc').append(`<p> <a href="${url}">${title}</a> </p>`);
      //Image
      const image = info.articles[i].urlToImage;
      $('.bbc').append(`<img src="${image}">`);
      //Description
      const description = info.articles[i].description;
      $('.bbc').append(`<p> ${description} </p>`);
    };
  });
});

// //Form Validation
// $(document).ready(function() {
//     $('#signupForm').formValidation({
//         framework: 'bootstrap',
//         excluded: ':disabled',
//         icon: {
//             valid: 'glyphicon glyphicon-ok',
//             invalid: 'glyphicon glyphicon-remove',
//             validating: 'glyphicon glyphicon-refresh'
//         },
//         fields: {
//             email: {
//                 validators: {
//                     notEmpty: {
//                         message: 'The email is required'
//                     }
//                 }
//             },
//             password: {
//                 validators: {
//                     notEmpty: {
//                         message: 'The password is required'
//                     }
//                 }
//             }
//         }
//     });
// });
