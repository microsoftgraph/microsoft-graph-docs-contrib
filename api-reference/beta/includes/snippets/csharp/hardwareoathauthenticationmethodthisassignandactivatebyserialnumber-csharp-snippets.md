---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Me.Authentication.HardwareOathMethods.AssignAndActivateBySerialNumber;

var requestBody = new AssignAndActivateBySerialNumberPostRequestBody
{
	VerificationCode = "588651",
	SerialNumber = "TOTP123456",
	DisplayName = "Amy Masters Token",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Me.Authentication.HardwareOathMethods.AssignAndActivateBySerialNumber.PostAsync(requestBody);


```