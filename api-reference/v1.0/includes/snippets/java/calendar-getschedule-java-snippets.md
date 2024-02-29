---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.calendar.getschedule.GetSchedulePostRequestBody getSchedulePostRequestBody = new com.microsoft.graph.users.item.calendar.getschedule.GetSchedulePostRequestBody();
LinkedList<String> schedules = new LinkedList<String>();
schedules.add("adelev@contoso.com");
schedules.add("meganb@contoso.com");
getSchedulePostRequestBody.setSchedules(schedules);
DateTimeTimeZone startTime = new DateTimeTimeZone();
startTime.setDateTime("2019-03-15T09:00:00");
startTime.setTimeZone("Pacific Standard Time");
getSchedulePostRequestBody.setStartTime(startTime);
DateTimeTimeZone endTime = new DateTimeTimeZone();
endTime.setDateTime("2019-03-15T18:00:00");
endTime.setTimeZone("Pacific Standard Time");
getSchedulePostRequestBody.setEndTime(endTime);
getSchedulePostRequestBody.setAvailabilityViewInterval(60);
var result = graphClient.me().calendar().getSchedule().post(getSchedulePostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```