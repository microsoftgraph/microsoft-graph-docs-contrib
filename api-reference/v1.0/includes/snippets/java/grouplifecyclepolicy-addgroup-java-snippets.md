---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.grouplifecyclepolicies.item.addgroup.AddGroupPostRequestBody addGroupPostRequestBody = new com.microsoft.graph.grouplifecyclepolicies.item.addgroup.AddGroupPostRequestBody();
addGroupPostRequestBody.setGroupId("ffffffff-ffff-ffff-ffff-ffffffffffff");
var result = graphClient.groupLifecyclePolicies().byGroupLifecyclePolicyId("{groupLifecyclePolicy-id}").addGroup().post(addGroupPostRequestBody);


```