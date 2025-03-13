---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.directoryobjects.item.checkmembergroups.CheckMemberGroupsPostRequestBody checkMemberGroupsPostRequestBody = new com.microsoft.graph.directoryobjects.item.checkmembergroups.CheckMemberGroupsPostRequestBody();
LinkedList<String> groupIds = new LinkedList<String>();
groupIds.add("f448435d-3ca7-4073-8152-a1fd73c0fd09");
groupIds.add("bd7c6263-4dd5-4ae8-8c96-556e1c0bece6");
groupIds.add("93670da6-d731-4366-94b5-abed40b6016b");
groupIds.add("f5484ab1-4d4d-41ec-a9b8-754b3957bfc7");
groupIds.add("c9103f26-f3cf-4004-a611-2a14e81b8f79");
checkMemberGroupsPostRequestBody.setGroupIds(groupIds);
var result = graphClient.directoryObjects().byDirectoryObjectId("{directoryObject-id}").checkMemberGroups().post(checkMemberGroupsPostRequestBody);


```