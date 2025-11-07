%dw 2.0
import * from dw::core::Dates
output application/json
fun isValid(inv) = 
    (inv.invoiceId != null and inv.invoiceId != "") and
    (inv.customerName != null and inv.customerName != "") and
    (inv.amount != null and inv.amount > 0) and
    (["USD", "EUR", "INR"] contains ((inv.currency as String) default "")) and
    ((inv.dueDate as Date) >= (inv.invoiceDate as Date))
---
{
    validInvoices: payload filter (i) -> isValid(i),
    invalidInvoices: payload filter (i) -> not isValid(i)
}
