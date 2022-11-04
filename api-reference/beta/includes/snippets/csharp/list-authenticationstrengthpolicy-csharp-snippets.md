---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationStrengthPolicies = await graphClient.Policies.AuthenticationStrengthPolicies
	.Request()
	.GetAsync();

```