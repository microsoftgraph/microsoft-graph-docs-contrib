---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationStrengthPolicy = new AuthenticationStrengthPolicy
{
	DisplayName = "FIDO2 only",
	Description = "An auth strength allowing only FIDO2 security keys."
};

await graphClient.Policies.AuthenticationStrengthPolicies["{authenticationStrengthPolicy-id}"]
	.Request()
	.UpdateAsync(authenticationStrengthPolicy);

```