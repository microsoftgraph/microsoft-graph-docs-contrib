---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingAppointmentCollectionResponse result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").calendarView().get(requestConfiguration -> {
	requestConfiguration.queryParameters.start = "2018-04-30T00:00:00Z";
	requestConfiguration.queryParameters.end = "2018-05-10T00:00:00Z";
});


```