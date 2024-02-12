---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.devicemanagement.AlertRecord result = graphClient.deviceManagement().monitoring().alertRecords().byAlertRecordId("{alertRecord-id}").get();


```