
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
while (i<n)
    {
        let espace = " ";
        let diez = "#";

       // (n-i)fois
       for (let count = 1; count < n-i; count++)
       {
        espace+=espace;
       }

       // (i) fois
       for (let count = 1; count < i; count++)
       {
        diez+=diez;
       }
        lignei = espace + diez ;
        console.log(lignei);
        i++;
    }

}