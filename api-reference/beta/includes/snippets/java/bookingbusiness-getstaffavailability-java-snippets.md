---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> staffIdsList = new LinkedList<String>();
staffIdsList.add("311a5454-08b2-4560-ba1c-f715e938cb79");

DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.dateTime = "2022-01-25T00:00:00";
startDateTime.timeZone = "India Standard Time";

DateTimeTimeZone endDateTime = new DateTimeTimeZone();
endDateTime.dateTime = "2022-01-26T17:00:00";
endDateTime.timeZone = "Pacific Standard Time";

graphClient.bookingBusinesses("contosolunchdelivery@contoso.onmicrosoft.com")
	.getStaffAvailability(BookingBusinessGetStaffAvailabilityParameterSet
		.newBuilder()
		.withStaffIds(staffIdsList)
		.withStartDateTime(startDateTime)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```