etatInitial<-function(trajectoire)
{
  temps <- 0
  somme <- 0
  lesTemps <- vector("numeric")
  occurrence <- 0
  Longueur <- length(trajectoire)
  etatDebut <- trajectoire[1]
  for(i in 1:Longueur)
  {
    temps <- temps + 1
    if(trajectoire[i] == etatDebut)
    {
      lesTemps <- append(test2, temps)
      occurrence <- occurrence + 1
      temps <- 0
    }
  }
  Longueur <- length(lesTemps)
  for(i in 1:Longueur)
  {
    somme <- somme + lesTemps[i]
  }
  moyenne <- somme/occurrence
  return(moyenne)
}