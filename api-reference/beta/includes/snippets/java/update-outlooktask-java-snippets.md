---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTask outlookTask = new OutlookTask();
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.setDateTime("2016-05-06T16:00:00");
dueDateTime.setTimeZone("Eastern Standard Time");
outlookTask.setDueDateTime(dueDateTime);
OutlookTask result = graphClient.me().outlook().tasks().byOutlookTaskId("{outlookTask-id}").patch(outlookTask, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "outlook.timezone=\"Eastern Standard Time\"");
});


```