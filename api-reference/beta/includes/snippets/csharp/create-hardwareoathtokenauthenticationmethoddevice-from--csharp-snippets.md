---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new HardwareOathTokenAuthenticationMethodDevice
{
	DisplayName = "Token 1",
	SerialNumber = "TOTP123456",
	Manufacturer = "Contoso",
	Model = "Hardware Token 1000",
	SecretKey = "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB",
	TimeIntervalInSeconds = 30,
	HashFunction = HardwareOathTokenHashFunction.Hmacsha1,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.AuthenticationMethodDevices.HardwareOathDevices.PostAsync(requestBody);


```