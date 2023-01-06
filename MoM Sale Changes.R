
#comparison of sales over MoM
salee3data<-sales
View(salee3data)

salee3data$order_date=as.Date(salee3data$order_date)

daily_orders2 <- salee3data %>%mutate(YearMonth2 = format(order_date, "%Y-%m"))
View(daily_orders2)

class(daily_orders2$order_date)
monthly_orders2<-daily_orders2%>%group_by(YearMonth2)%>%summarize(Monthlyorders2 = sum(sale))%>%arrange(YearMonth2)
View(monthly_orders2)

monthly_report2<- monthly_orders2 %>%mutate(MoM2 = (Monthlyorders2 - lag(Monthlyorders2)) / lag(Monthlyorders2))
monthly_report2 <- monthly_report2 %>%mutate(MoM2 = round(MoM2 * 100, 1))