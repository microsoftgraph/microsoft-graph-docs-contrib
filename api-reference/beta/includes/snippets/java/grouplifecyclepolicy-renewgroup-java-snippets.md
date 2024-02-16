---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.grouplifecyclepolicies.renewgroup.RenewGroupPostRequestBody renewGroupPostRequestBody = new com.microsoft.graph.beta.grouplifecyclepolicies.renewgroup.RenewGroupPostRequestBody();
renewGroupPostRequestBody.setGroupId("ffffffff-ffff-ffff-ffff-ffffffffffff");
var result = graphClient.groupLifecyclePolicies().renewGroup().post(renewGroupPostRequestBody);


```