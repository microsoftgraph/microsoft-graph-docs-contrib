---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.getmembergroups.GetMemberGroupsPostRequestBody getMemberGroupsPostRequestBody = new com.microsoft.graph.users.item.getmembergroups.GetMemberGroupsPostRequestBody();
getMemberGroupsPostRequestBody.setSecurityEnabledOnly(true);
var result = graphClient.me().getMemberGroups().post(getMemberGroupsPostRequestBody);


```