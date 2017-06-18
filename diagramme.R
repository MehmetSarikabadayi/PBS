Diagramme <- function(chaine){
  print(chaine)
  
  
  barplot(chaine,main = " diagramme bâton des fréquences des états occupés lors de la trajectoire",xlab = "état",ylab = "trajectoire",xlim = c(0,20),col = c(1,2,3))
  box()
  legend(x="topright",legend = c("Etat1","Etat 2","Etat 3"),fill = c(1,2,3))
}