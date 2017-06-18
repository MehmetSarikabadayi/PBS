Diagramme <- function(Trajectoire){
  plot(table(Trajectoire),yaxt="n",main="Diagramme bâton des fréquences des états occupés")
  box()
}