options(digits = 10) 
N=10
data<-list(0)
for(i in 1:100000)
{
  data[[i]]<-sample(1:N,N)
}
value<-list(0)
x<-numeric(0)
for(i in 1:100000)
{
  value[[i]]<-c(data[[i]][1],abs(data[[i]][2:N]-lag(data[[i]])[2:N]))
  x[i]<-sum(value[[i]])
}
mean(x)
sd(x)
(p<-sum(x>=45)/100000)

N=20
data<-list(0)
for(i in 1:1000000)
{
  data[[i]]<-sample(1:N,N)
}
value<-list(0)
x<-numeric(0)
for(i in 1:1000000)
{
  value[[i]]<-c(data[[i]][1],abs(data[[i]][2:N]-lag(data[[i]])[2:N]))
  x[i]<-sum(value[[i]])
}
mean(x)
sd(x)
(p<-sum(x>=160)/1000000)