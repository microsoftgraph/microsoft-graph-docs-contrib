---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTaskFolder outlookTaskFolder = new OutlookTaskFolder();
outlookTaskFolder.setName("Cooking");
OutlookTaskFolder result = graphClient.me().outlook().taskGroups().byOutlookTaskGroupId("{outlookTaskGroup-id}").taskFolders().post(outlookTaskFolder);


```