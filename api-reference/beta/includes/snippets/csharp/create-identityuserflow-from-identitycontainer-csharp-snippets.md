---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityUserFlow
{
	Id = "Pol1",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1f,
};
var result = await graphClient.Identity.UserFlows.PostAsync(requestBody);


```