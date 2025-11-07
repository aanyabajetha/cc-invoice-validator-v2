%dw 2.0
output application/json
---
[{
	invoiceId: "INV001",
	customerName: "John Doe",
	invoiceDate: "2025-10-25",
	dueDate: "2025-11-05",
	amount: 1200.50,
	currency: "USD",
	status: "Pending"
},
                {
	invoiceId: "INV002",
	customerName: "",
	invoiceDate: "2025-10-10",
	dueDate: "2025-10-05",
	amount: 500,
	currency: "INR",
	status: "Pending"
},
                {
	invoiceId: "INV003",
	customerName: "Alice",
	invoiceDate: "2025-10-20",
	dueDate: "2025-10-25",
	amount: 0,
	currency: "EUR",
	status: "Pending"
},
                {
	invoiceId: "INV004",
	customerName: "Robert",
	invoiceDate: "2025-10-22",
	dueDate: "2025-10-29",
	amount: 800,
	currency: "GBP", // Invalid currency
	status: "Pending"
}]