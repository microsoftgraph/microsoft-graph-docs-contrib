---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setIsOnlineMeeting(true);
event.setOnlineMeetingProvider(OnlineMeetingProviderType.TeamsForBusiness);
Event result = graphClient.me().events().byEventId("{event-id}").patch(event);


```