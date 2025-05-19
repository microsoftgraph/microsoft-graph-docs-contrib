---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointGroup sharePointGroup = new SharePointGroup();
sharePointGroup.setOdataType("#microsoft.graph.sharePointGroup");
sharePointGroup.setTitle("Sample Group");
sharePointGroup.setDescription("This is a sample description");
SharePointGroup result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").sharePointGroups().post(sharePointGroup);


```