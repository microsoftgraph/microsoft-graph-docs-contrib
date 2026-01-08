---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new QrCode
{
	OdataType = "#microsoft.graph.qrCode",
	ExpireDateTime = DateTimeOffset.Parse("2025-12-01T12:00:00Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Authentication.QrCodePinMethod.StandardQRCode.PatchAsync(requestBody);


```