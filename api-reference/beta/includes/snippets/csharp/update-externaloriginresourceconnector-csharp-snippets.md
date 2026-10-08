---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ExternalOriginResourceConnector
{
	Id = "d743fe46-80f8-41b1-a2ee-7796e024edb9",
	ConnectorType = ConnectorType.SapIag,
	DisplayName = "SAP IAG 5.0",
	Description = "SAP IAG 5.0.0.0.0",
	ConnectionInfo = new ConnectionInfo
	{
		OdataType = "Microsoft.IGAELM.EC.FrontEnd.ExternalModel.externalTokenBasedSapIagConnectionInfo",
		Url = "https://IAGINTGORG-iag-intg-space-java-rest-arqapi.cfps.sap.hana.ondemand.com",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"keyVaultName" , "sap-key-vault"
			},
			{
				"subscriptionId" , "caa5v042-9c76-44de-9e84-f3e3071a7b4e"
			},
			{
				"resourceGroup" , "test-rg"
			},
			{
				"accessTokenUrl" , "https://entra-intg-l4nds6yn.authentication.sap.hana.ondemand.com/oauth/token"
			},
			{
				"clientId" , "sb-8d896b-72b5-46ce-9273-471874a09137!b133623|iagapi-iag-intg-space!b11378"
			},
			{
				"secretName" , "clienecret"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ExternalOriginResourceConnectors["{externalOriginResourceConnector-id}"].PatchAsync(requestBody);


```