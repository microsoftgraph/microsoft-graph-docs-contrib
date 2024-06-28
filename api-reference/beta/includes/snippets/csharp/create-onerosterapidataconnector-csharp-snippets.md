---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.IndustryData;

var requestBody = new OneRosterApiDataConnector
{
	OdataType = "#microsoft.graph.industryData.oneRosterApiDataConnector",
	DisplayName = "Generic OAuth2 Connector",
	ApiFormat = ApiFormat.OneRoster,
	BaseUrl = "https://fakeProvider.net/ims/oneroster/v1p1",
	ApiVersion = "1.1",
	Credential = new OAuth2ClientCredential
	{
		OdataType = "#microsoft.graph.industryData.oAuth2ClientCredential",
		DisplayName = "One Roster API Credentials",
		ClientId = "530be723-6af3-4952-8658-668fb2598ad7",
		ClientSecret = "thisIsASecret",
		TokenUrl = "https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token",
		Scope = null,
	},
	IsDemographicsEnabled = false,
	IsFlagsEnabled = false,
	IsContactsEnabled = false,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"sourceSystem@odata.bind" , "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.IndustryData.DataConnectors.PostAsync(requestBody);


```