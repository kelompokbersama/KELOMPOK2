




library(shiny)



ui <- fluidPage(
  
  
  
  
 tabsetPanel(
   
   
 
   tabPanel("Tambah Teman",
     
     
            h5("Layanan Tambah Teman"),
            
            
            h3("Welcome to Team 2 Application!!", style="
    font-family: 'cursive';
    color: #ad1d28;
    text-align:center
    "),
            
            
            fileInput("dapatkan_file", "Pilih Kontak",
                      accept = c(
                        "text/csv",
                        "text/comma-separated-values,text/plain",
                        ".csv")
            ),
            
            
            
            radioButtons("pemisah", "Separator",
                         choices = c(Comma = ",",
                                     Semicolon = ";",
                                     Tab = "\t"),
                         selected = ",", inline = TRUE),
            
            br(),
            br(), br(), br(), br(), br(), 
            
            
            h3("Berikut ini merupakan Kontak Anda", style="
    font-family: 'cursive';
    color: #ad1d28;
    text-align:center
    "),
            
            br(),
            
            DTOutput("cetak_data")
     
            
   ) , 
   
   tabPanel("Pemberitahuan",
            
            
            h5("Tampilan Pemberitahuan"), 
            
            h3("Pembaharuan Perangkat Lunak", style="
    font-family: 'cursive';
    color: #ad1d28;
    text-align:center
    "),
            
            h5("Lakukan pembaharuan perangkat lunak secara rutin, untuk mencegah terjadinya error saat menjalankan aplikasi."), 
            
            h3("Backup Data Anda", style="
    font-family: 'cursive';
    color: #ad1d28;
    text-align:center
    "),
            
            h5("Lakukan backup data secara rutin, untuk mencegah hilangnya data Anda.") 
   ) ,
   
   tabPanel("Penyimpanan dan Data",
            
            
            h5("Kelola Penyimpanan Data")
            
        
            
   ) ,
   
   tabPanel("Pusat Bantuan",
            
            
            h5("Keamanan dan Pengaturan")
   
   
   
   ) 
  
   
   
 )
  
  
)