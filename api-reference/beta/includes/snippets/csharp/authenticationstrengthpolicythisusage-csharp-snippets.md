---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationStrengthUsage = await graphClient.Policies.AuthenticationStrengthPolicies["{authenticationStrengthPolicy-id}"]
	.Usage()
	.Request()
	.GetAsync();

```