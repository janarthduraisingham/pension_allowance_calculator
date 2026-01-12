library(shiny)
library(bslib)

ui <- page_fluid(
  titlePanel("Pension Allowance Calculator"),
  layout_columns(
    col_widths = c(2, 2, 2, 2, 2),
    
    card(
      card_header("Year 1"),
      textInput("year1", "Year 1 (latest)", "2024/25"),
      numericInput("taxable_income1", "Taxable income £", 0)
    ),
    
    card(
      card_header("Year 2"),
      textInput("year2", "Year 2", "2023/24")
    ),
    
    card(
      card_header("Year 3"),
      textInput("year3", "Year 3", "2022/23")
    ),
    
    card(
      card_header("Year 4"),
      textInput("year4", "Year 4", "2021/22")
    ),
    
    card(
      card_header("Year 5"),
      textInput("year5", "Year 5 (oldest)", "2020/19")
    )
  ),
  
  
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)