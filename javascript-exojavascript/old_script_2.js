/*Créé un script script_2.js qui définira la fonction factorielle et
 qui calculera la factorielle du nombre entré par l'utilisateur. 
Petit exemple rapide : factorielle(5) = 5*4*3*2*1 et factorielle(10) = 10*9*8*7*6*5*4*3*2*1 
// valeur de test factorielle(4) =24
factorielle(6) =720
factorielle(2) =2
factorielle(1) =1
*/


let prenom = "kk";
listentre= [];
while (true){

    nombre = prompt('entrez un chiffre (ou re-taper "enter" pour afficher votre resultat)');   
    
    if (nombre) {
        listentre.push(nombre) ;
        
    }

    else {
        console.log("affichage du resultat: ");
        for(let nbre in listentre) {
            factorielle(nombre);
        }        
    }

}
 



listresult= [] ;
//  factorielle(1) ;

//  factorielle(2) ;
 //factorielle(1) ;
 
function factorielle(n) {
    let m = n;
    let result = n;
    //TODO verifier typeof attendu

   
    if ((typeof n !== "number") || (n < 1))
    {
    console.log(`pas possible de faire une factorielle pour un nombre <1 `);
    //todo: mettre un break? ;
    }
    

    else if (n===1)
    { 
        result = n;
        listresult.push(result) ;
        return listresult;

    }
    

    else {

        while (n>1) {
            result = result * (n-1) ;
            n = n - 1 ;
            //console.log(result);
        }
    
        console.log(`${m} factorielle =  ${result}`);
        listresult.push(result) ;
        return listresult;
   }
}


