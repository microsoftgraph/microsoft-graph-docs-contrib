---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BookingAppointment bookingAppointment = new BookingAppointment();
DateTimeTimeZone endDateTime = new DateTimeTimeZone();
endDateTime.dateTime = "2018-05-06T12:30:00+00:00";
endDateTime.timeZone = "UTC";
bookingAppointment.endDateTime = endDateTime;
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.dateTime = "2018-05-06T12:00:00+00:00";
startDateTime.timeZone = "UTC";
bookingAppointment.startDateTime = startDateTime;

graphClient.solutions().bookingBusinesses("Contosolunchdelivery@contoso.onmicrosoft.com").appointments("AAMkADKnAAA=")
	.buildRequest()
	.patch(bookingAppointment);

```