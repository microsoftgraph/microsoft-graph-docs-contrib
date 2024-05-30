---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTask outlookTask = new OutlookTask();
outlookTask.setSubject("Shop for dinner");
DateTimeTimeZone startDateTime = new DateTimeTimeZone();
startDateTime.setDateTime("2016-04-23T18:00:00");
startDateTime.setTimeZone("Pacific Standard Time");
outlookTask.setStartDateTime(startDateTime);
DateTimeTimeZone dueDateTime = new DateTimeTimeZone();
dueDateTime.setDateTime("2016-04-25T13:00:00");
dueDateTime.setTimeZone("Pacific Standard Time");
outlookTask.setDueDateTime(dueDateTime);
OutlookTask result = graphClient.me().outlook().taskFolders().byOutlookTaskFolderId("{outlookTaskFolder-id}").tasks().post(outlookTask);


```