---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingAppointment bookingAppointment = new BookingAppointment();
bookingAppointment.setOdataType("#microsoft.graph.bookingAppointment");
DateTimeTimeZone end = new DateTimeTimeZone();
end.setOdataType("#microsoft.graph.dateTimeTimeZone");
end.setDateTime("2018-05-06T12:30:00.0000000+00:00");
end.setTimeZone("UTC");
bookingAppointment.setEnd(end);
DateTimeTimeZone invoiceDate = new DateTimeTimeZone();
invoiceDate.setOdataType("#microsoft.graph.dateTimeTimeZone");
invoiceDate.setDateTime("2018-05-06T12:30:00.0000000+00:00");
invoiceDate.setTimeZone("UTC");
bookingAppointment.setInvoiceDate(invoiceDate);
DateTimeTimeZone start = new DateTimeTimeZone();
start.setOdataType("#microsoft.graph.dateTimeTimeZone");
start.setDateTime("2018-05-06T12:00:00.0000000+00:00");
start.setTimeZone("UTC");
bookingAppointment.setStart(start);
BookingAppointment result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").appointments().byBookingAppointmentId("{bookingAppointment-id}").patch(bookingAppointment);


```