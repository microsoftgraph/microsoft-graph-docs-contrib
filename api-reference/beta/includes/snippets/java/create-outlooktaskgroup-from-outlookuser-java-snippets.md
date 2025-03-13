---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookTaskGroup outlookTaskGroup = new OutlookTaskGroup();
outlookTaskGroup.setName("Leisure tasks");
OutlookTaskGroup result = graphClient.me().outlook().taskGroups().post(outlookTaskGroup);


```