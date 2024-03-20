---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Calendar calendar = new Calendar();
calendar.setName("Marketing calendar");
Calendar result = graphClient.me().calendarGroups().byCalendarGroupId("{calendarGroup-id}").calendars().post(calendar);


```