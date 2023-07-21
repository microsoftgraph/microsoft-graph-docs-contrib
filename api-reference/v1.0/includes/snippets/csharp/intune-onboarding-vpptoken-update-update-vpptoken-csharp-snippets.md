---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new VppToken
{
	OdataType = "#microsoft.graph.vppToken",
	OrganizationName = "Organization Name value",
	VppTokenAccountType = VppTokenAccountType.Education,
	AppleId = "Apple Id value",
	ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
	LastSyncDateTime = DateTimeOffset.Parse("2017-01-01T00:02:49.3205976-08:00"),
	Token = "Token value",
	State = VppTokenState.Valid,
	LastSyncStatus = VppTokenSyncStatus.InProgress,
	AutomaticallyUpdateApps = true,
	CountryOrRegion = "Country Or Region value",
};
var result = await graphClient.DeviceAppManagement.VppTokens["{vppToken-id}"].PatchAsync(requestBody);


```