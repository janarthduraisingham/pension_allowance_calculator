library(shiny)
library(bslib)
library(tidyverse)
library(DT)

ui <- page_fluid(
  titlePanel("Pension Allowance Calculator (post 16/17)"),
  layout_columns(
    col_widths = c(2, 2, 2, 2, 2),
    
    card(
      card_header("Year 1"),
      dateInput("year_1", "Year ending", "2025-04-05"),
      numericInput("employment_earnings_1", "Earnings from employment", 1),
      numericInput("employment_earnings_self_partn_1", "Earnings from self employment & partnerships", 1),
      numericInput("pension_income_1", "Pension income", 1),
      numericInput("savings_interest_1", "Interest on savings", 1),
      numericInput("shares_income_1", "Income from shares", 1),
      numericInput("foreign_interest_div_1", "Foreign interest & dividends", 1),
      numericInput("rental_income_1", "Rental income", 1),
      numericInput("trust_income_1", "Income from trust", 1),
      numericInput("tax_relief_1", "Tax relief that was not given at source", 1),
      numericInput("gross_contribution_relief_source_1", "Gross contributions where relief at source given", 1),
      numericInput("salary_sacrifice_contributions_1", "Contributions by salary sacrifice & flexible remuneration", 1),
      numericInput("taxed_lump_sum_benefits_1", "Taxed lump sum benefits received", 1),
      numericInput("contributions_relief_given_1", "Contributions where relief given", 1),
      numericInput("overseas_relief_1", "Tax relief due on overseas contributions", 1),
      numericInput("employer_contributions_1", "Employer contributions", 1)
      

    ),
    
    card(
      card_header("Year 2"),
      dateInput("year_2", "Year ending", "2024-04-05"),
      numericInput("employment_earnings_2", "Earnings from employment", 2),
      numericInput("employment_earnings_self_partn_2", "Earnings from self employment & partnerships", 1),
      numericInput("pension_income_2", "Pension income", 1),
      numericInput("savings_interest_2", "Interest on savings", 1),
      numericInput("shares_income_2", "Income from shares", 1),
      numericInput("foreign_interest_div_2", "Foreign interest & dividends", 1),
      numericInput("rental_income_2", "Rental income", 1),
      numericInput("trust_income_2", "Income from trust", 1),
      numericInput("tax_relief_2", "Tax relief that was not given at source", 1),
      numericInput("gross_contribution_relief_source_2", "Gross contributions where relief at source given", 1),
      numericInput("salary_sacrifice_contributions_2", "Contributions by salary sacrifice & flexible remuneration", 1),
      numericInput("taxed_lump_sum_benefits_2", "Taxed lump sum benefits received", 1),
      numericInput("contributions_relief_given_2", "Contributions where relief given", 1),
      numericInput("overseas_relief_2", "Tax relief due on overseas contributions", 1),
      numericInput("employer_contributions_2", "Employer contributions", 1)
    ),
    
    card(
      card_header("Year 3"),
      dateInput("year_3", "Year ending", "2023-04-05"),
      numericInput("employment_earnings_3", "Earnings from employment", 3),
      numericInput("employment_earnings_self_partn_3", "Earnings from self employment & partnerships", 1),
      numericInput("pension_income_3", "Pension income", 1),
      numericInput("savings_interest_3", "Interest on savings", 1),
      numericInput("shares_income_3", "Income from shares", 1),
      numericInput("foreign_interest_div_3", "Foreign interest & dividends", 1),
      numericInput("rental_income_3", "Rental income", 1),
      numericInput("trust_income_3", "Income from trust", 1),
      numericInput("tax_relief_3", "Tax relief that was not given at source", 1),
      numericInput("gross_contribution_relief_source_3", "Gross contributions where relief at source given", 1),
      numericInput("salary_sacrifice_contributions_3", "Contributions by salary sacrifice & flexible remuneration", 1),
      numericInput("taxed_lump_sum_benefits_3", "Taxed lump sum benefits received", 1),
      numericInput("contributions_relief_given_3", "Contributions where relief given", 1),
      numericInput("overseas_relief_3", "Tax relief due on overseas contributions", 1),
      numericInput("employer_contributions_3", "Employer contributions", 1)
      
    ),
    
    card(
      card_header("Year 4"),
      dateInput("year_4", "Year ending", "2022-04-05"),
      numericInput("employment_earnings_4", "Earnings from employment", 4),
      numericInput("employment_earnings_self_partn_4", "Earnings from self employment & partnerships", 1),
      numericInput("pension_income_4", "Pension income", 1),
      numericInput("savings_interest_4", "Interest on savings", 1),
      numericInput("shares_income_4", "Income from shares", 1),
      numericInput("foreign_interest_div_4", "Foreign interest & dividends", 1),
      numericInput("rental_income_4", "Rental income", 1),
      numericInput("trust_income_4", "Income from trust", 1),
      numericInput("tax_relief_4", "Tax relief that was not given at source", 1),
      numericInput("gross_contribution_relief_source_4", "Gross contributions where relief at source given", 1),
      numericInput("salary_sacrifice_contributions_4", "Contributions by salary sacrifice & flexible remuneration", 1),
      numericInput("taxed_lump_sum_benefits_4", "Taxed lump sum benefits received", 1),
      numericInput("contributions_relief_given_4", "Contributions where relief given", 1),
      numericInput("overseas_relief_4", "Tax relief due on overseas contributions", 1),
      numericInput("employer_contributions_4", "Employer contributions", 1)
    ),
    
    card(
      card_header("Year 5"),
      dateInput("year_5", "Year ending", "2021-04-05"),
      numericInput("employment_earnings_5", "Earnings from employment", 5),
      numericInput("employment_earnings_self_partn_5", "Earnings from self employment & partnerships", 1),
      numericInput("pension_income_5", "Pension income", 1),
      numericInput("savings_interest_5", "Interest on savings", 1),
      numericInput("shares_income_5", "Income from shares", 1),
      numericInput("foreign_interest_div_5", "Foreign interest & dividends", 1),
      numericInput("rental_income_5", "Rental income", 1),
      numericInput("trust_income_5", "Income from trust", 1),
      numericInput("tax_relief_5", "Tax relief that was not given at source", 1),
      numericInput("gross_contribution_relief_source_5", "Gross contributions where relief at source given", 1),
      numericInput("salary_sacrifice_contributions_5", "Contributions by salary sacrifice & flexible remuneration", 1),
      numericInput("taxed_lump_sum_benefits_5", "Taxed lump sum benefits received", 1),
      numericInput("contributions_relief_given_5", "Contributions where relief given", 1),
      numericInput("overseas_relief_5", "Tax relief due on overseas contributions", 1),
      numericInput("employer_contributions_5", "Employer contributions", 1)
    ),
    
  ),
  
  card(
    card_header("Taxable income working"),
    DTOutput("taxable_income")
  ),
  
  card(
    card_header("Net income working"),
    DTOutput("net_income")
  ),
  
  card(
    card_header("Threshold income working"),
    DTOutput("threshold_income")
  ),
  
  card(
    card_header("Adjusted income working"),
    DTOutput("adjusted_income")
  ),
  
  card(
    card_header("Tapered allowance working"),
    DTOutput("tapered_allowance")
  )
  
  
  
  
)

server <- function(input, output) {
  
  my_colnames <- reactive(paste("y/e ", c(input$year_1,
                            input$year_2,
                            input$year_3,
                            input$year_4,
                            input$year_5)))
  dates <- reactive(c(input$year_1,
                                   input$year_2,
                                   input$year_3,
                                   input$year_4,
                                   input$year_5))
  
  taxable_income = reactive({
    
    taxable_income = data.frame(matrix(NA, nrow = 0, ncol = 5))
    
    
    colnames(taxable_income) = c("Year 1", "Year 2", "Year 3", "Year 4", "Year 5")
    colnames(taxable_income) = my_colnames()
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
    
    row_3 <- data.frame(matrix(c(input$pension_income_1,
                                 input$pension_income_2,
                                 input$pension_income_3,
                                 input$pension_income_4,
                                 input$pension_income_5),
                               nrow = 1,
                               ncol = 5))
    
    row_4 <- data.frame(matrix(c(input$savings_interest_1,
                                 input$savings_interest_2,
                                 input$savings_interest_3,
                                 input$savings_interest_4,
                                 input$savings_interest_5),
                               nrow = 1,
                               ncol = 5))
    
    row_5 <- data.frame(matrix(c(input$shares_income_1,
                                 input$shares_income_2,
                                 input$shares_income_3,
                                 input$shares_income_4,
                                 input$shares_income_5),
                               nrow = 1,
                               ncol = 5))
    
    row_6 <- data.frame(matrix(c(input$foreign_interest_div_1,
                                 input$foreign_interest_div_2,
                                 input$foreign_interest_div_3,
                                 input$foreign_interest_div_4,
                                 input$foreign_interest_div_5),
                               nrow = 1,
                               ncol = 5))
    
    row_7 <- data.frame(matrix(c(input$rental_income_1,
                                 input$rental_income_2,
                                 input$rental_income_3,
                                 input$rental_income_4,
                                 input$rental_income_5),
                               nrow = 1,
                               ncol = 5))
    
    row_8 <- data.frame(matrix(c(input$trust_income_1,
                                 input$trust_income_2,
                                 input$trust_income_3,
                                 input$trust_income_4,
                                 input$trust_income_5),
                               nrow = 1,
                               ncol = 5))
    
    total_row <- row_1 + row_2 + row_3 + row_4 + row_5 + row_6 + row_7 + row_8

    colnames(row_1) <- my_colnames()#colnames(taxable_income)
    colnames(row_2) <- my_colnames()#colnames(taxable_income)
    colnames(row_3) <- my_colnames()#colnames(taxable_income)
    colnames(row_4) <- my_colnames()#colnames(taxable_income)
    colnames(row_5) <- my_colnames()#colnames(taxable_income)
    colnames(row_6) <- my_colnames()#colnames(taxable_income)
    colnames(row_7) <- my_colnames()#colnames(taxable_income)
    colnames(row_8) <- my_colnames()#colnames(taxable_income)
    colnames(total_row) <- my_colnames()#colnames(taxable_income)
    
    
  
    taxable_income <- taxable_income %>%
      rbind(row_1) %>%
      rbind(row_2) %>%
      rbind(row_3) %>%
      rbind(row_4) %>%
      rbind(row_5) %>%
      rbind(row_6) %>%
      rbind(row_7) %>%
      rbind(row_8) %>%
      rbind(total_row)
    
    rownames(taxable_income) <- c("Earnings from employment",
                                  "Earnings from self employment & partnerships",
                                  "Pensions income",
                                  "Interest on savings",
                                  "Income from shares",
                                  "Income from foreign investment & dividends",
                                  "Rental income",
                                  "Income from trusts",
                                  
                                  "Taxable Income")
    
    taxable_income
  })
  
  output$taxable_income = renderDT(taxable_income())
  
  net_income <- reactive({
    
    row_1 <- taxable_income()
    
    row_1 <- row_1[nrow(taxable_income()), ]
    
    row_2 <- data.frame(matrix(c(input$tax_relief_1,
                                 input$tax_relief_2,
                                 input$tax_relief_3,
                                 input$tax_relief_4,
                                 input$tax_relief_5),
                               nrow = 1,
                               ncol = 5)) * -1
    
    total_row <- row_1 + row_2
    
    colnames(row_2) <- my_colnames()
    colnames(total_row) <- my_colnames()
    
    net_income <- row_1 %>%
      rbind(row_2) %>%
      rbind(total_row)
    
    rownames(net_income) <- c("Taxable income",
                              "(Less tax reliefs where not given at source)",
                              "Net income")
    
    net_income
    
  })
  
  output$net_income = renderDT(net_income())
  
  
  threshold_income <- reactive({
    
    row_1 <- net_income()
    
    req(nrow(row_1) > 0)
    
    row_1 <- row_1[nrow(net_income()), ]
    
    row_2 <- data.frame(matrix(c(input$gross_contribution_relief_source_1,
                                 input$gross_contribution_relief_source_2,
                                 input$gross_contribution_relief_source_3,
                                 input$gross_contribution_relief_source_4,
                                 input$gross_contribution_relief_source_5),
                               nrow = 1,
                               ncol = 5)) * -1
    
    row_3 <- data.frame(matrix(c(input$taxed_lump_sum_benefits_1,
                                 input$taxed_lump_sum_benefits_2,
                                 input$taxed_lump_sum_benefits_3,
                                 input$taxed_lump_sum_benefits_4,
                                 input$taxed_lump_sum_benefits_5),
                               nrow = 1,
                               ncol = 5)) * -1
    
    row_4 <- data.frame(matrix(c(input$salary_sacrifice_contributions_5,
                                 input$salary_sacrifice_contributions_5,
                                 input$salary_sacrifice_contributions_5,
                                 input$salary_sacrifice_contributions_5,
                                 input$salary_sacrifice_contributions_5),
                               nrow = 1,
                               ncol = 5))

    total_row <- row_1 + row_2 + row_3 + row_4
    
    colnames(row_2) = my_colnames()
    colnames(row_3) = my_colnames()
    colnames(row_4) = my_colnames()
    colnames(total_row) = my_colnames()
    
    threshold_income <- row_1 %>%
      rbind(row_2) %>%
      rbind(row_3) %>%
      rbind(row_4) %>%
      rbind(total_row)
    
    rownames(threshold_income) <- c("Net income",
                                    "(Less gross pension contributions where relief given at source)",
                                    "(Less taxed lump sum death benefits from registered pensions)",
                                    "Reductions in employment income for contributions via salary sacrifice or felxible remuneration",
                                    
                                    "Threshold income")
    
    threshold_income
  })
  
  output$threshold_income = renderDT(threshold_income())
  
  adjusted_income <- reactive({
    
    row_1 <- net_income()
    
    req(nrow(row_1) > 0)
    
    row_1 <- row_1[nrow(net_income()), ]
    
    row_2 <- data.frame(matrix(c(input$tax_relief_1,
                                 input$tax_relief_2,
                                 input$tax_relief_3,
                                 input$tax_relief_4,
                                 input$tax_relief_5),
                               nrow = 1,
                               ncol = 5))
    
    row_3 <- data.frame(matrix(c(input$contributions_relief_given_1,
                                 input$contributions_relief_given_2,
                                 input$contributions_relief_given_3,
                                 input$contributions_relief_given_4,
                                 input$contributions_relief_given_5),
                               nrow = 1,
                               ncol = 5))
    
    row_4 <- data.frame(matrix(c(input$overseas_relief_1,
                                 input$overseas_relief_2,
                                 input$overseas_relief_3,
                                 input$overseas_relief_4,
                                 input$overseas_relief_5),
                               nrow = 1,
                               ncol = 5))
    
    row_5 <- data.frame(matrix(c(input$employer_contributions_1,
                                 input$employer_contributions_2,
                                 input$employer_contributions_3,
                                 input$employer_contributions_4,
                                 input$employer_contributions_5),
                               nrow = 1,
                               ncol = 5))
    
    row_6 <- data.frame(matrix(c(input$taxed_lump_sum_benefits_1,
                                 input$taxed_lump_sum_benefits_2,
                                 input$taxed_lump_sum_benefits_3,
                                 input$taxed_lump_sum_benefits_4,
                                 input$taxed_lump_sum_benefits_5),
                               nrow = 1,
                               ncol = 5)) * -1
    
    total_row <- row_1 + row_2 + row_3 + row_4 + row_5 + row_6
    
    colnames(row_2) <- my_colnames()
    colnames(row_3) <- my_colnames()
    colnames(row_4) <- my_colnames()
    colnames(row_5) <- my_colnames()
    colnames(row_6) <- my_colnames()
    colnames(total_row) <- my_colnames()
    
    adjusted_income <- row_1 %>%
      rbind(row_2) %>%
      rbind(row_3) %>%
      rbind(row_4) %>%
      rbind(row_5) %>%
      rbind(row_6) %>%
      rbind(total_row)
    
    rownames(adjusted_income) <- c("Net income",
                              "Tax reliefs where not given at source",
                              "Contributions where relief given at source",
                              "Tax relief due on overseas contributions",
                              "Employer contributions",
                              "(Less taxed lump sum death benefits from registered pensions)",
                              "Adjusted income")
    
    adjusted_income
    
  })
  
  output$adjusted_income = renderDT(adjusted_income())
  
  tapered_allowance <- reactive({
    
    tapered_allowance <- data.frame(matrix(NA,
                                           nrow = 0,
                                           ncol = 5))
    
    colnames(tapered_allowance) <- my_colnames()
    
    row_0 <- data.frame(matrix(format(dates(), "%Y"), nrow  = 1, ncol = 5))
    
    row_1 <- case_when(
      format(dates(), "%Y") <= "2023" ~ 40000,
      TRUE ~ 60000
    )
    
    row_1 <- data.frame(matrix(row_1, nrow = 1, ncol = 5))
    
    row_2 <- case_when(
      format(dates(), "%Y") >= "2024" ~ 200000,
      format(dates(), "%Y") >= "2020" ~ 200000,
      TRUE ~ 150000
    )
    
    row_3 <- case_when(
      format(dates(), "%Y") >= "2024" ~ 260000,
      format(dates(), "%Y") >= "2020" ~ 240000,
      TRUE ~ 110000
    )
    
    row_2 <- data.frame(matrix(row_2, nrow = 1, ncol = 5))
    row_3 <- data.frame(matrix(row_3, nrow = 1, ncol = 5))
    
    colnames(row_0) <- my_colnames()
    colnames(row_1) <- my_colnames()
    colnames(row_2) <- my_colnames()
    colnames(row_3) <- my_colnames()
    
    tapered_allowance <- tapered_allowance %>%
      rbind(row_0) %>%
      rbind(row_1) %>%
      rbind(row_2) %>%
      rbind(row_3)
    
    rownames(tapered_allowance) <- c("Year end",
                                     "Maximum allowance",
                                     "Threshold income threshold",
                                     "Adjusted income threshold")
    
    tapered_allowance
    
  })
  
  output$tapered_allowance <- renderDT(tapered_allowance())
  
}

shinyApp(ui = ui, server = server)