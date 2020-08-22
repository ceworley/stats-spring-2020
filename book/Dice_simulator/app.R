library(shiny)
ui <- fluidPage(
    titlePanel("Dice simulator"),
    numericInput("seed","Seed:",1,1,1000,1),
    numericInput("nsides","Number of sides",6,2,20,1),
    numericInput("nrolls","Number of rolls in each sample",30,1,200,1),
    numericInput("nreps","Number of repetitions",1,1,10000,1),
    verbatimTextOutput("rolpr"),
    downloadButton("downloadData", "Download")
)

server <- function(input, output) {
    output$rolpr <- renderText({
        set.seed(input$seed)
        x <- sample(1:input$nsides,input$nrolls*input$nreps,T)
        x <- matrix(x,nrow=input$nreps,byrow=T)
        xbar <- apply(x,1,mean)
        tot <- apply(x,1,sum)
        if(input$nreps==1){
            st = paste("x = c(",paste(x,collapse=","),")",sep="")
        } else {
            data.frame(x=apply(x,2,as.vector))
            st = paste(apply(x,1,function(x) paste(x,collapse=",")),collapse="\n")
        }
        return(st)
    })
    
    
    output$downloadData <- downloadHandler(
        filename = function() {
            paste(input$dataset, ".csv", sep = "")
        },
        content = function(file) {
            write.csv(datasetInput(), file, row.names = FALSE)
        }
    )
}

shinyApp(ui = ui, server = server)
