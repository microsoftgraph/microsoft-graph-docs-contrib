---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2xIdentityUserFlow
{
	Id = "Partner",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1f,
};
var result = await graphClient.Identity.B2xUserFlows.PostAsync(requestBody);


```