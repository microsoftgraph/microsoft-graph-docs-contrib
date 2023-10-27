---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Fido2AuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.fido2AuthenticationMethodConfiguration",
	State = AuthenticationMethodState.Enabled,
	IsAttestationEnforced = true,
};
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```