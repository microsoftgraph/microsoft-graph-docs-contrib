---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationFlowsPolicy
{
	SelfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration
	{
		IsEnabled = true,
	},
};
var result = await graphClient.Policies.AuthenticationFlowsPolicy.PatchAsync(requestBody);


```