---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Event event = new Event();
event.setOriginalStartTimeZone("originalStartTimeZone-value");
event.setOriginalEndTimeZone("originalEndTimeZone-value");
ResponseStatus responseStatus = new ResponseStatus();
responseStatus.setResponse(ResponseType.None);
OffsetDateTime time = OffsetDateTime.parse("datetime-value");
responseStatus.setTime(time);
event.setResponseStatus(responseStatus);
event.setUid("iCalUId-value");
event.setReminderMinutesBeforeStart(99);
event.setIsReminderOn(true);
Event result = graphClient.groups().byGroupId("{group-id}").events().byEventId("{event-id}").patch(event);


```