---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BookingService bookingService = new BookingService();
bookingService.setOdataType("#microsoft.graph.bookingService");
PeriodAndDuration defaultDuration = PeriodAndDuration.ofDuration(Duration.parse("PT30M"));
bookingService.setDefaultDuration(defaultDuration);
BookingService result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").services().byBookingServiceId("{bookingService-id}").patch(bookingService);


```