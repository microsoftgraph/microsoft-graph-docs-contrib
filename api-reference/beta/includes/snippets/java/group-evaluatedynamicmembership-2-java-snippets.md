---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.groups.evaluatedynamicmembership.EvaluateDynamicMembershipPostRequestBody evaluateDynamicMembershipPostRequestBody = new com.microsoft.graph.beta.groups.evaluatedynamicmembership.EvaluateDynamicMembershipPostRequestBody();
evaluateDynamicMembershipPostRequestBody.setMemberId("319b41e8-d9e4-42f8-bdc9-741113f48b33");
evaluateDynamicMembershipPostRequestBody.setMembershipRule("(user.displayName -startsWith \"EndTestUser\")");
var result = graphClient.groups().evaluateDynamicMembership().post(evaluateDynamicMembershipPostRequestBody);


```