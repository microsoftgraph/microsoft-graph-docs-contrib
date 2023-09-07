---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new HardwareOathAuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
	State = AuthenticationMethodState.Disabled,
};
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```