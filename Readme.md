# Month-Over-Month Changes in R
If you need to calculate changes such as last month versus the prior month or last month versus the same month a year earlier, R is a good choice. It’s easy to do those calculations — and you don’t have to worry whether a spreadsheet formula was properly clicked and dragged to cover all the necessary cells. The steps are given below:

- The first step is to load the dataset in R.

- In the next step, added a new column to the data, called YearMonth, using base R’s format() function to create a yyyy-mm format for order_date column.

- In the next step, I calculated monthly sale by summing the sale with the group by on order_date column

- Now, calculate previous month sales. It is calculated by using lag function which gives us the previous value w.r.t to current value.

- After this, subtract previous month sale from current month sale. Then divide it by previous month sales to get the comparison with the previous month sale compared to the current month.
