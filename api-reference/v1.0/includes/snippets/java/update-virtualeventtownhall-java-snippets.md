---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventTownhall virtualEventTownhall = new VirtualEventTownhall();
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.setDateTime("2024-03-31T10:00:00");
startDateTime.setTimeZone("Pacific Standard Time");
virtualEventTownhall.setStartDateTime(startDateTime);
DateTimeTimeZone endDateTime = new DateTimeTimeZone();
endDateTime.setDateTime("2024-03-31T17:00:00");
endDateTime.setTimeZone("Pacific Standard Time");
virtualEventTownhall.setEndDateTime(endDateTime);
VirtualEventTownhall result = graphClient.solutions().virtualEvents().townhalls().byVirtualEventTownhallId("{virtualEventTownhall-id}").patch(virtualEventTownhall);


```