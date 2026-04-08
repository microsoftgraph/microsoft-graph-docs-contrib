---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.settings.workhoursandlocations.occurrences.setcurrentlocation.SetCurrentLocationPostRequestBody setCurrentLocationPostRequestBody = new com.microsoft.graph.beta.users.item.settings.workhoursandlocations.occurrences.setcurrentlocation.SetCurrentLocationPostRequestBody();
setCurrentLocationPostRequestBody.setUpdateScope(WorkLocationUpdateScope.CurrentSegment);
setCurrentLocationPostRequestBody.setWorkLocationType(WorkLocationType.Remote);
graphClient.me().settings().workHoursAndLocations().occurrences().setCurrentLocation().post(setCurrentLocationPostRequestBody);


```