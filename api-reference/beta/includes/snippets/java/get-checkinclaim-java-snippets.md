---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CheckInClaim result = graphClient.places().byPlaceId("{place-id}").checkIns().byCheckInClaimCalendarEventId("{checkInClaim-calendarEventId}").get();


```