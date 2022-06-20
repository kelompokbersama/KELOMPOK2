



server <- function(input, output)
{
  
  

  
  
  
  output$cetak_data <- renderDT({
    
    dapatkan_file <- input$dapatkan_file
    
    if (is.null(dapatkan_file))
      return(NULL)
    
    read.csv(dapatkan_file$datapath, sep = input$pemisah)
    
    
    
  })

  
  
  
  
  
  
}