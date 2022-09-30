/*Créé un script script_2.js qui définira la fonction factorielle et
 qui calculera la factorielle du nombre entré par l'utilisateur. 
Petit exemple rapide : factorielle(5) = 5*4*3*2*1 et factorielle(10) = 10*9*8*7*6*5*4*3*2*1 
// valeur de test factorielle(4) =24
factorielle(6) =720
factorielle(2) =2
factorielle(1) =1
*/






nombre = prompt('entrez un chiffre (ou re-taper "enter" pour afficher votre resultat! )'); 
factorielle(nombre);
 
function factorielle(n) {
    let m = n ;
    let result=n;
// let mytype = typeof n ;
//     console.log(mytype) ;
//     if (mytype != 'number') 
//    {
//        console.log(`ce n'est pas un nombre l!`);
//     }
//     else {


            if ((n < 1))
            {
            console.log(`pas possible de faire une factorielle pour un nombre <1 `);
            //todo: mettre un break? ;
            }
            

            else if (n===1)
            { 
                result = n;
                return result;

            }
            

            else {

                while (n>1) {
                    result = result * (n-1) ;
                    n = n - 1 ;
                    //console.log(result);
                }
            
                console.log(`${m} factorielle =  ${result}`);
            
                return result;
     
    }
}


