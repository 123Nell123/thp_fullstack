
selectionEntre= [];
list_nomPrenom = []; 

const entrepreneurs = [
    { first: 'Steve', last: 'Jobs', year: 1955 },
    { first: 'Oprah', last: 'Winfrey', year: 1954 },
    { first: 'Bill', last: 'Gates', year: 1955 },
    { first: 'Sheryl', last: 'Sandberg', year: 1969 },
    { first: 'Mark', last: 'Zuckerberg', year: 1984 },
    { first: 'Beyonce', last: 'Knowles', year: 1981 },
    { first: 'Jeff', last: 'Bezos', year: 1964 },
    { first: 'Diane', last: 'Hendricks', year: 1947 },
    { first: 'Elon', last: 'Musk', year: 1971 },
    { first: 'Marissa', last: 'Mayer', year: 1975 },
    { first: 'Walt', last: 'Disney', year: 1901 },
    { first: 'Larry', last: 'Page', year: 1973 },
    { first: 'Jack', last: 'Dorsey', year: 1976 },
    { first: 'Evan', last: 'Spiegel', year: 1990 },
    { first: 'Brian', last: 'Chesky', year: 1981 },
    { first: 'Travis', last: 'Kalanick', year: 1976 },
    { first: 'Marc', last: 'Andreessen', year: 1971 },
    { first: 'Peter', last: 'Thiel', year: 1967 }
  ];


annee(1970);
console.log("*".repeat(20));
nomPrenom(entrepreneurs);
console.log("*".repeat(20));
age(entrepreneurs);
console.log("*".repeat(20));
sortByLastName(entrepreneurs)

function nomPrenom(malist){
    for( let ent in entrepreneurs) {
    list_nomPrenom.push([entrepreneurs[ent].first, entrepreneurs[ent].last]) ;
    }
    list_nomPrenom.forEach(element => { console.log(element)
         
    });
  }




  function annee(n){
     for( let ent in entrepreneurs) {
         if ((entrepreneurs[ent].year >= n) && entrepreneurs[ent].year <= (n+9)){
             
            selectionEntre.push(entrepreneurs[ent]) ;
         }
     }
  
     selectionEntre.forEach(element => { console.log(element)
         
     });

  }



  function age(malist){
 
    malist.forEach(e => {
        console.log(e.first + " " + e.last  + " a (ou aurait) " + (2021 - e.year) + " ans.");
      })
     }



//Question 4

function sortByLastName(arr) {
    let newArr = arr.sort(function (a,b) {
      return a.last == b.last ? 0 : a.last>b.last ? 1 : -1;
    })
    return newArr;
  }