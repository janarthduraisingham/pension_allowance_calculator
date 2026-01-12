library(shiny)
library(bslib)
library(tidyverse)
library(DT)

ui <- page_fluid(
  titlePanel("Pension Allowance Calculator"),
  layout_columns(
    col_widths = c(2, 2, 2, 2, 2),
    
    card(
      card_header("Year 1"),
      dateInput("year_1", "Year 1 ending", "2025-04-05"),
      numericInput("employment_earnings_1", "Earnings from employment", 0),
      numericInput("employment_earnings_self_partn_1", "Earnings from self employment & partnerships", 0),
      numericInput("pension_income_1", "Pension income", 0),
      numericInput("savings_interest_1", "Interest on savings", 0),
      numericInput("shares_income_1", "Income from shares", 0),
      numericInput("foreign_interst_div_1", "Foreign interest & dividends", 0),
      numericInput("rental_income_1", "Rental income", 0),
      numericInput("trust_income_1", "Income from trust", 0),
      numericInput("gross_contribution_relief_source_1", "Gross contributions where relief at source given", 0),
      numericInput("salary_sacrifice_contributions_1", "Contributions by salary sacrifice & flexible remuneration", 0),
      numericInput("taxed_lump_sum_benefits_1", "Taxed lump sum benefits received", 0)

    ),
    
    card(
      card_header("Year 2"),
      dateInput("year_2", "Year 2 ending", "2024-04-05"),
      numericInput("employment_earnings_2", "Earnings from employment", 0),
      numericInput("employment_earnings_self_partn_2", "Earnings from self employment & partnerships", 0),
      numericInput("pension_income_2", "Pension income", 0),
      numericInput("savings_interest_2", "Interest on savings", 0),
      numericInput("shares_income_2", "Income from shares", 0),
      numericInput("foreign_interst_div_2", "Foreign interest & dividends", 0),
      numericInput("rental_income_2", "Rental income", 0),
      numericInput("trust_income_2", "Income from trust", 0),
      numericInput("gross_contribution_relief_source_2", "Gross contributions where relief at source given", 0),
      numericInput("salary_sacrifice_contributions_2", "Contributions by salary sacrifice & flexible remuneration", 0),
      numericInput("taxed_lump_sum_benefits_2", "Taxed lump sum benefits received", 0)
    ),
    
    card(
      card_header("Year 3"),
      dateInput("year_3", "Year 3 ending", "2023-04-05"),
      numericInput("employment_earnings_3", "Earnings from employment", 0),
      numericInput("employment_earnings_self_partn_3", "Earnings from self employment & partnerships", 0),
      numericInput("pension_income_3", "Pension income", 0),
      numericInput("savings_interest_3", "Interest on savings", 0),
      numericInput("shares_income_3", "Income from shares", 0),
      numericInput("foreign_interst_div_3", "Foreign interest & dividends", 0),
      numericInput("rental_income_3", "Rental income", 0),
      numericInput("trust_income_3", "Income from trust", 0),
      numericInput("gross_contribution_relief_source_3", "Gross contributions where relief at source given", 0),
      numericInput("salary_sacrifice_contributions_3", "Contributions by salary sacrifice & flexible remuneration", 0),
      numericInput("taxed_lump_sum_benefits_3", "Taxed lump sum benefits received", 0)
    ),
    
    card(
      card_header("Year 4"),
      dateInput("year_4", "Year 4 ending", "2022-04-05"),
      numericInput("employment_earnings_4", "Earnings from employment", 0),
      numericInput("employment_earnings_self_partn_4", "Earnings from self employment & partnerships", 0),
      numericInput("pension_income_4", "Pension income", 0),
      numericInput("savings_interest_4", "Interest on savings", 0),
      numericInput("shares_income_4", "Income from shares", 0),
      numericInput("foreign_interst_div_4", "Foreign interest & dividends", 0),
      numericInput("rental_income_4", "Rental income", 0),
      numericInput("trust_income_4", "Income from trust", 0),
      numericInput("gross_contribution_relief_source_4", "Gross contributions where relief at source given", 0),
      numericInput("salary_sacrifice_contributions_4", "Contributions by salary sacrifice & flexible remuneration", 0),
      numericInput("taxed_lump_sum_benefits_4", "Taxed lump sum benefits received", 0)
    ),
    
    card(
      card_header("Year 5"),
      dateInput("year_5", "Year 5 ending", "2021-04-05"),
      numericInput("employment_earnings_5", "Earnings from employment", 0),
      numericInput("employment_earnings_self_partn_5", "Earnings from self employment & partnerships", 0),
      numericInput("pension_income_5", "Pension income", 0),
      numericInput("savings_interest_5", "Interest on savings", 0),
      numericInput("shares_income_5", "Income from shares", 0),
      numericInput("foreign_interst_div_5", "Foreign interest & dividends", 0),
      numericInput("rental_income_5", "Rental income", 0),
      numericInput("trust_income_5", "Income from trust", 0),
      numericInput("gross_contribution_relief_source_5", "Gross contributions where relief at source given", 0),
      numericInput("salary_sacrifice_contributions_5", "Contributions by salary sacrifice & flexible remuneration", 0),
      numericInput("taxed_lump_sum_benefits_5", "Taxed lump sum benefits received", 0)
    ),
    
  ),
  
  card(
    card_header("Taxable income working"),
    DTOutput("taxable_income")
  )
  
  
)

server <- function(input, output) {
  
  taxable_income = reactive({
    
    taxable_income = data.frame(matrix(NA, nrow = 0, ncol = 5))
    
    colnames(taxable_income) = c("Year 1", "Year 2", "Year 3", "Year 4", "Year 5")
  
    row_1 <- data.frame(matrix(c(input$employment_earnings_1,
           input$employment_earnings_2,
           input$employment_earnings_3,
           input$employment_earnings_4,
           input$employment_earnings_5),
           nrow = 1,
           ncol = 5))
    
    row_2 <- data.frame(matrix(c(input$employment_earnings_self_partn_1,
                                 input$employment_earnings_self_partn_2,
                                 input$employment_earnings_self_partn_3,
                                 input$employment_earnings_self_partn_4,
                                 input$employment_earnings_self_partn_5),
                               nrow = 1,
                               ncol = 5))
    
    total_row <- row_1 + row_2
           
    colnames(row_1) <- colnames(taxable_income)
    colnames(row_2) <- colnames(taxable_income)
    colnames(total_row) <- colnames(taxable_income)
    
    
  
    taxable_income <- taxable_income %>%
      rbind(row_1) %>%
      rbind(row_2) %>%
      rbind(total_row)
    
    rownames(taxable_income) <- c("Earnings from employment",
                                  "Earnings from self employment & partnerships",
                                  
                                  "Taxable Income")
    
    taxable_income
  })
  
  output$taxable_income = renderDT(taxable_income())
  
}

shinyApp(ui = ui, server = server)