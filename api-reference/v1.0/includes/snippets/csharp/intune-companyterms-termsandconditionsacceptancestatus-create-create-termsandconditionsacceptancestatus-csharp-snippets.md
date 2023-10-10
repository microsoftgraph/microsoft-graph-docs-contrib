---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TermsAndConditionsAcceptanceStatus
{
	OdataType = "#microsoft.graph.termsAndConditionsAcceptanceStatus",
	UserDisplayName = "User Display Name value",
	AcceptedVersion = 15,
	AcceptedDateTime = DateTimeOffset.Parse("2016-12-31T23:57:43.6165506-08:00"),
	UserPrincipalName = "User Principal Name value",
};
var result = await graphClient.DeviceManagement.TermsAndConditions["{termsAndConditions-id}"].AcceptanceStatuses.PostAsync(requestBody);


```