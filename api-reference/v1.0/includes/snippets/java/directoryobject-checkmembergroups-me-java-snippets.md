---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.checkmembergroups.CheckMemberGroupsPostRequestBody checkMemberGroupsPostRequestBody = new com.microsoft.graph.users.item.checkmembergroups.CheckMemberGroupsPostRequestBody();
LinkedList<String> groupIds = new LinkedList<String>();
groupIds.add("fee2c45b-915a-4a64b130f4eb9e75525e");
groupIds.add("4fe90ae065a-478b9400e0a0e1cbd540");
checkMemberGroupsPostRequestBody.setGroupIds(groupIds);
var result = graphClient.me().checkMemberGroups().post(checkMemberGroupsPostRequestBody);


```