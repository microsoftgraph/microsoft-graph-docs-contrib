---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.checkmembergroups.CheckMemberGroupsPostRequestBody checkMemberGroupsPostRequestBody = new com.microsoft.graph.beta.users.item.checkmembergroups.CheckMemberGroupsPostRequestBody();
LinkedList<String> groupIds = new LinkedList<String>();
groupIds.add("fee2c45b-915a-4a64-b130-f4eb9e75525e");
groupIds.add("4fe90ae7-065a-478b-9400-e0a0e1cbd540");
checkMemberGroupsPostRequestBody.setGroupIds(groupIds);
var result = graphClient.me().checkMemberGroups().post(checkMemberGroupsPostRequestBody);


```