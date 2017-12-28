// Utilities, Functions and Chaining!
//
// Log out the answers to all of the following questions!
//
// Here is some data that you can work with.
//
const people = [
  { id: 1, username: "A", active: true,  age: 20, uid: 1412 },
  { id: 2, username: "B", active: false, age: 35, uid: 1352 },
  { id: 3, username: "C", active: false, age: 50, uid: 5418 },
  { id: 4, username: "D", active: true,  age: 65, uid: 216  },
  { id: 5, username: "E", active: true,  age: 80, uid: 18   },
  { id: 6, username: "E", active: true,  age: 95, uid: 1000 }
];

// Log out 30 random numbers between 20 and 100
const random30 = _.times(30, function (n) {
  return n = _.random(20, 101);
});

console.log(random30);

// Create a function that can only ever be called once

const testFunction = function () {
  console.log("test");
};
const initialize = _.once(testFunction);
initialize();
initialize();

// Append a paragraph tag to the body for every person in people. It should end up looking something like this - <p> Hello A, you don't look a day over 20 </p>
// $( document ).ready( function () {
//   _( people ).each( function ( person ) {
//     $( 'body' ).append( `<p>Hello ${ person.username }, you don't look a day over ${ person.age }. `);
//   })
// });


const a = _.each(people, function (people) {
  const test  = _.template("<p>Hello <%= name %> , you don't look a day over <%= age %>.</p>");
  test({name: people.username, age: people.age});
});

console.log(a);

// const test  = _.template("<p>Hello <%= name %> , you don't look a day over <%= age %>.</p>");
// test({name: "damien", age: 11});


// The Final Exercise

// This is really, really difficult, and we don't really expect it to get done. But worth having a think about!
//
const startingData = [
  [["groucho", "marx", 1990], ["firstName", "lastName", "born"]],
  [["chico",   "marx", 1987], ["firstName", "lastName", "born"]],
  [["zeppo",   "marx", 2001], ["firstName", "lastName", "born"]],
  [["harpo",   "marx", 1988], ["firstName", "lastName", "born"]],
  [["gummo",   "marx", 1992], ["firstName", "lastName", "born"]]
];
// Eventually we want five console.logs that look like the following...
//
// Groucho Marx was born in 1890.
// Chico Marx was born in 1887.
// Zeppo Marx was born in 1901.
// Harpo Marx was born in 1888.
// Gummo Marx was born in 1892.
// You'll need to rearrange the data firstly, then alter the data, then print it out.
//
// A few hints
//
// Have a think before you read these!
//
// The following functions could be helpful
//
// _.chain();
// _.map();
// _.unzip();
// _.object();
// _.invert();
// _.mapObject();
// _.isNaN();
// _.template();
