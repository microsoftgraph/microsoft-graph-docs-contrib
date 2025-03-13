---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directoryobjects.item.getmembergroups.GetMemberGroupsPostRequestBody getMemberGroupsPostRequestBody = new com.microsoft.graph.beta.directoryobjects.item.getmembergroups.GetMemberGroupsPostRequestBody();
getMemberGroupsPostRequestBody.setSecurityEnabledOnly(false);
var result = graphClient.directoryObjects().byDirectoryObjectId("{directoryObject-id}").getMemberGroups().post(getMemberGroupsPostRequestBody);


```