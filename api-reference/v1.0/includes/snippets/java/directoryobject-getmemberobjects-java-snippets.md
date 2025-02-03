---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.directoryobjects.item.getmemberobjects.GetMemberObjectsPostRequestBody getMemberObjectsPostRequestBody = new com.microsoft.graph.directoryobjects.item.getmemberobjects.GetMemberObjectsPostRequestBody();
getMemberObjectsPostRequestBody.setSecurityEnabledOnly(true);
var result = graphClient.directoryObjects().byDirectoryObjectId("{directoryObject-id}").getMemberObjects().post(getMemberObjectsPostRequestBody);


```