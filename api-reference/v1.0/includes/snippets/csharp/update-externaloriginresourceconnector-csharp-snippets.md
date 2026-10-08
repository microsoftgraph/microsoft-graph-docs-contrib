---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ExternalOriginResourceConnector
{
	ConnectorType = ConnectorType.SapIag,
	DisplayName = "SAP IAG Connector 2.0",
	Description = "SAP IAG Connector 2.0 description",
	ConnectionInfo = new ExternalTokenBasedSapIagConnectionInfo
	{
		OdataType = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
		Url = "https://contoso.example.com",
		KeyVaultName = "Keyvault",
		SubscriptionId = "5ee98b73-d9df-43a7-8a92-36855054bdee",
		ResourceGroup = "SAP IAG Group",
		AccessTokenUrl = "https://contoso.example.com/oauth/token",
		ClientId = "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
		SecretName = "clientSecret",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ExternalOriginResourceConnectors["{externalOriginResourceConnector-id}"].PatchAsync(requestBody);


```