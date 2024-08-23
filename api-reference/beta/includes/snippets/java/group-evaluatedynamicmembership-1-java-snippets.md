---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.groups.item.evaluatedynamicmembership.EvaluateDynamicMembershipPostRequestBody evaluateDynamicMembershipPostRequestBody = new com.microsoft.graph.beta.groups.item.evaluatedynamicmembership.EvaluateDynamicMembershipPostRequestBody();
evaluateDynamicMembershipPostRequestBody.setMemberId("319b41e8-d9e4-42f8-bdc9-741113f48b33");
var result = graphClient.groups().byGroupId("{group-id}").evaluateDynamicMembership().post(evaluateDynamicMembershipPostRequestBody);


```