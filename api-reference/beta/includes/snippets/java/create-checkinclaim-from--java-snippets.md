---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CheckInClaim checkInClaim = new CheckInClaim();
checkInClaim.setOdataType("#microsoft.graph.checkInClaim");
checkInClaim.setCalendarEventId("040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978");
checkInClaim.setCheckInMethod(CheckInMethod.Verified);
CheckInClaim result = graphClient.places().byPlaceId("{place-id}").checkIns().post(checkInClaim);


```