---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.solutions.bookingbusinesses.item.getstaffavailability.GetStaffAvailabilityPostRequestBody getStaffAvailabilityPostRequestBody = new com.microsoft.graph.beta.solutions.bookingbusinesses.item.getstaffavailability.GetStaffAvailabilityPostRequestBody();
LinkedList<String> staffIds = new LinkedList<String>();
staffIds.add("311a5454-08b2-4560-ba1c-f715e938cb79");
getStaffAvailabilityPostRequestBody.setStaffIds(staffIds);
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.setDateTime("2022-01-25T00:00:00");
startDateTime.setTimeZone("India Standard Time");
getStaffAvailabilityPostRequestBody.setStartDateTime(startDateTime);
DateTimeTimeZone endDateTime = new DateTimeTimeZone();
endDateTime.setDateTime("2022-01-26T17:00:00");
endDateTime.setTimeZone("Pacific Standard Time");
getStaffAvailabilityPostRequestBody.setEndDateTime(endDateTime);
var result = graphClient.solutions().bookingBusinesses().byBookingBusinessId("{bookingBusiness-id}").getStaffAvailability().post(getStaffAvailabilityPostRequestBody);


```