VB <- function(Linf, k, t0, ageMax){
   return(Linf*(1-exp(-k*(1:ageMax-t0))))
}
 
naturalMortality<- function(Linf, k, t0, ageMax){
   L = VB(Linf=Linf, k=k, t0=t0, ageMax = ageMax)
   W = (3.815e-006 *  L ^ 3.188)*1000
   M = 3.0 * W^(-0.288)
   return(data.frame(Age = 1:ageMax, Size = L, Weight=W/1000,  M = M))
}


naturalMortality (Linf=275.8123,k =0.157,t0=-2.13,30)


naturalMortality (Linf=213.7675,k =0.235,t0=-2.10,30)