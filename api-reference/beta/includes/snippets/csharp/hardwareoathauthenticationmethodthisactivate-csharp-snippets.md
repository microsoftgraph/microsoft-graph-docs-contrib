---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Authentication.HardwareOathMethods.Item.Activate;

var requestBody = new ActivatePostRequestBody
{
	VerificationCode = "588651",
	DisplayName = "Amy Masters Token",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Authentication.HardwareOathMethods["{hardwareOathAuthenticationMethod-id}"].Activate.PostAsync(requestBody);


```