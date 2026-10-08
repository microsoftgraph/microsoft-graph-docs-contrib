---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.settings.workhoursandlocations.occurrences.setcurrentlocation.SetCurrentLocationPostRequestBody setCurrentLocationPostRequestBody = new com.microsoft.graph.beta.users.item.settings.workhoursandlocations.occurrences.setcurrentlocation.SetCurrentLocationPostRequestBody();
setCurrentLocationPostRequestBody.setUpdateScope(WorkLocationUpdateScope.CurrentDay);
setCurrentLocationPostRequestBody.setWorkLocationType(WorkLocationType.Office);
setCurrentLocationPostRequestBody.setPlaceId("12345678-1234-1234-1234-123456789012");
graphClient.me().settings().workHoursAndLocations().occurrences().setCurrentLocation().post(setCurrentLocationPostRequestBody);


```