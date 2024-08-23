---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTaskFolder outlookTaskFolder = new OutlookTaskFolder();
outlookTaskFolder.setName("Volunteer");
OutlookTaskFolder result = graphClient.me().outlook().taskFolders().post(outlookTaskFolder);


```