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
event.setRecurrence(null);
event.setReminderMinutesBeforeStart(99);
event.setIsOnlineMeeting(true);
event.setOnlineMeetingProvider(OnlineMeetingProviderType.TeamsForBusiness);
event.setIsReminderOn(true);
event.setHideAttendees(false);
LinkedList<String> categories = new LinkedList<String>();
categories.add("Red category");
event.setCategories(categories);
Event result = graphClient.me().events().byEventId("{event-id}").patch(event);


```