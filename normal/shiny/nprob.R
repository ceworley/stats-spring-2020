library(shiny)
library(latex2exp)

# Define UI for application that draws a histogram
ui <- fluidPage(
    withMathJax(
        helpText("Parameters of  \\(X\\sim \\mathcal{N}(\\mu,\\sigma)\\):")),
    numericInput("mu","The mean of \\(X\\), \\(\\mu\\)",0),
    numericInput("sig","The standard deviation of \\(X\\), \\(\\sigma\\)",1),
    uiOutput("statement"),
    radioButtons("type","Probability Type:",
                 c("Left" = "l",
                   "Right" = "r",
                   "Center" = "c",
                   "Two-tail" = "t",
                   "Between two x values" = "b")),
    conditionalPanel("input.type == 'l' | input.type == 'r'",
                     numericInput("x","Boundary, x:",value=0)),
    conditionalPanel("input.type == 'c' | input.type == 't'",
                     numericInput("d","Distance between boundary and mean, d:",value=1.96,min=0)),
    conditionalPanel("input.type == 'b'",
                     numericInput("x1","Lower Boundary, x1:",value=-1.96),
                     numericInput("x2","Upper Boundary, x2:",value=1.96)),
    plotOutput("density",width="600px",height="300px"),
    # plotOutput("spinner",width="600px",height="600px")
)


server <- function(input, output, session) {
    options(scipen=100)
    output$statement = renderUI({withMathJax(paste("$$X \\sim \\mathcal{N}(",input$mu,", ",input$sig,") $$"))})
    
    output$density = renderPlot({
        mu = input$mu
        sig = input$sig
        x = input$x
        Z = seq(-3,3,0.01)
        z = (x-mu)/sig
        d = input$d
        xd = mu + input$d
        zd = input$d/sig
        x1 = input$x1
        x2 = input$x2
        z1 = (x1-mu)/sig
        z2 = (x2-mu)/sig
        par(mar=c(7,0,2,0))
        plot(Z,dnorm(Z),type="l",lwd=3,xlim = c(-3,3),ylim=c(0,0.4),ann=F,axes=F)
        if(input$type == "l"){
            polygon(c(Z[Z<=z],z,-3),c(dnorm(Z[Z<=z]),0,0),col=rgb(1,0.5,0.5,0.5))
            mtext(paste("P(X<",signif(x,4),") = P(Z<",signif(z,4),") = ",round(pnorm(z),4),collapse=""),3,0,cex=1.5)
        }
        if(input$type == "r"){
            polygon(c(Z[Z>=z],3,z),c(dnorm(Z[Z>=z]),0,0),col=rgb(1,0.5,0.5,0.5))
            mtext(paste("P(X>",signif(x,4),") = P(Z>",signif(z,4),") = ",round(1-pnorm(z),4),collapse=""),3,0,cex=1.5)
        }
        if(input$type == "c"){
            if(zd>0){
                polygon(c(Z[Z>=-zd & Z<=zd],zd,-zd),c(dnorm(Z[Z>=-zd & Z<=zd]),0,0),col=rgb(1,0.5,0.5,0.5))
                zz = signif(zd,4)
                dd = signif(d,4)
                pp = signif(2*pnorm(zd)-1,4)
                mm = signif(mu,4)
                if(mm>=0){
                    mtext(paste("P(|X -",mm,"|<",dd,") = P(|Z|<",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                } else {
                    mtext(paste("P(|X -(",mm,")|<",dd,") = P(|Z|<",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                }
            } else {
                zz = signif(zd,4)
                dd = signif(d,4)
                pp = 0
                mm = signif(mu,4)
                if(mm>=0){
                    mtext(paste("P(|X -",mm,"|<",dd,") = P(|Z|<",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                } else {
                    mtext(paste("P(|X -(",mm,")|<",dd,") = P(|Z|<",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                }
            }
        }
        if(input$type == "t"){
            if(zd>0){
                polygon(c(Z[Z<=-zd],-zd,-3),c(dnorm(Z[Z<=-zd]),0,0),col=rgb(1,0.5,0.5,0.5))
                polygon(c(Z[Z>=zd],3,zd),c(dnorm(Z[Z>=zd]),0,0),col=rgb(1,0.5,0.5,0.5))
                zz = signif(zd,4)
                dd = signif(d,4)
                pp = signif(2-2*pnorm(zd),4)
                mm = signif(mu,4)
                if(mm>=0){
                    mtext(paste("P(|X -",mm,"|>",dd,") = P(|Z|>",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                } else {
                    mtext(paste("P(|X -(",mm,")|>",dd,") = P(|Z|>",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                }
            } else {
                polygon(c(Z,3,-3),c(dnorm(Z),0,0),col=rgb(1,0.5,0.5,0.5))
                zz = signif(zd,4)
                dd = signif(d,4)
                pp = 1
                mm = signif(mu,4)
                if(mm>=0){
                    mtext(paste("P(|X -",mm,"|>",dd,") = P(|Z|>",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                } else {
                    mtext(paste("P(|X -(",mm,")|>",dd,") = P(|Z|>",zz,") = ",pp,collapse=""),3,0,cex=1.5)
                }
            }
            
        }
        if(input$type == "b"){
            zz1 = signif(z1,4)
            zz2 = signif(z2,4)
            xx1 = signif(x1,4)
            xx2 = signif(x2,4)
            polygon(c(Z[Z>=z1 & Z<=z2],z2,z1),c(dnorm(Z[Z>=z1 & Z<=z2]),0,0),col=rgb(1,0.5,0.5,0.5))
            pp = max(signif(pnorm(z2)-pnorm(z1),4),0)
            mtext(paste("P(",xx1,"<X<",xx2,") = P(",zz1,"<Z<",zz2,") = ",pp,collapse=""),3,0,cex=1.5)
        }
        axis(1,seq(-3,3,1),line=0.5)
        mtext('z',side=1,line=2.2)
        axis(1,seq(-3,3,1),seq(mu-3*sig,mu+3*sig,sig),line=3.7)
        mtext('x',side=1,line=5.4)
        abline(h=seq(0,0.4,0.05),lwd=0.5)
        abline(v=seq(-3,3,0.2),lwd=0.5)
        abline(h=0,lwd=2)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
