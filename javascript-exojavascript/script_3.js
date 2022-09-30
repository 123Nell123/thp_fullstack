
"Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
// // Utilisateur rentre un nombre (par ex 5)
//     # 4 espace ; 1 diez
//    ##
//   ###
//  ####
// #####
nombre = prompt("combien d'etage veux tu?");   

pyramide(nombre);
function pyramide(n) {
    i = 1;
while (i<=n)
    {
        let espace = " ";
        let diez = "#";

       // (n-i)fois
     
        espace = espace.repeat(n-i);
      

       // (i) fois
      
        diez = diez.repeat(i);
       
        lignei = espace + diez ;
        console.log(lignei);
        i++;
    }

}