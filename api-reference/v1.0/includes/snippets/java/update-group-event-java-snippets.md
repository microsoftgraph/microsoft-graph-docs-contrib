---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
Location location = new Location();
location.setDisplayName("Conf Room 2");
event.setLocation(location);
Event result = graphClient.groups().byGroupId("{group-id}").calendar().events().byEventId("{event-id}").patch(event);


```