---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTask outlookTask = new OutlookTask();
outlookTask.setSubject("Shop for children's weekend");
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.setDateTime("2016-05-03T09:00:00");
startDateTime.setTimeZone("Eastern Standard Time");
outlookTask.setStartDateTime(startDateTime);
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.setDateTime("2016-05-05T16:00:00");
dueDateTime.setTimeZone("Eastern Standard Time");
outlookTask.setDueDateTime(dueDateTime);
OutlookTask result = graphClient.me().outlook().tasks().post(outlookTask, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```