---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2cIdentityUserFlow
{
	Id = "Customer",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 3f,
};
var result = await graphClient.Identity.B2cUserFlows.PostAsync(requestBody);


```