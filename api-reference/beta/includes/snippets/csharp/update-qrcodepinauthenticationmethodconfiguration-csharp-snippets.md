---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new QrCodePinAuthenticationMethodConfiguration
{
	OdataType = "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
	State = AuthenticationMethodState.Enabled,
	StandardQRCodeLifetimeInDays = 365,
	PinLength = 8,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationMethodsPolicy.AuthenticationMethodConfigurations["{authenticationMethodConfiguration-id}"].PatchAsync(requestBody);


```