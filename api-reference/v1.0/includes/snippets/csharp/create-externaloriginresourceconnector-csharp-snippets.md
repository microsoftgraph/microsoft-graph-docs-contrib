---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ExternalOriginResourceConnector
{
	OdataType = "#microsoft.graph.externalOriginResourceConnector",
	DisplayName = "SAP IAG Connector",
	Description = "This connector helps integrate Microsoft Entra with SAP IAG",
	ConnectorType = ConnectorType.SapIag,
	ConnectionInfo = new ExternalTokenBasedSapIagConnectionInfo
	{
		OdataType = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
		Url = "https://contoso.example.com",
		AccessTokenUrl = "https://contoso.example.com/oauth/token",
		ClientId = "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
		KeyVaultName = "Keyvault",
		SecretName = "clientSecret",
		SubscriptionId = "5ee98b73-d9df-43a7-8a92-36855054bdee",
		ResourceGroup = "SAP IAG Group",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ExternalOriginResourceConnectors.PostAsync(requestBody);


```