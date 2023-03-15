---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationStrengthPolicy
{
	OdataType = "#microsoft.graph.authenticationStrengthPolicy",
	DisplayName = "FIDO2 only",
	Description = "An auth strength allowing only FIDO2 security keys.",
};
var result = await graphClient.Policies.AuthenticationStrengthPolicies["{authenticationStrengthPolicy-id}"].PatchAsync(requestBody);


```