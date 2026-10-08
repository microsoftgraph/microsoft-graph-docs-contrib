---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ExternalOriginResourceConnector
{
	OdataType = "#microsoft.graph.externalOriginResourceConnector",
	DisplayName = "SAP Access Control",
	Description = "SAP Access Control connector",
	ConnectorType = ConnectorType.SapAc,
	ConnectionInfo = new ExternalTokenBasedSapIagConnectionInfo
	{
		OdataType = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
		Url = "dev.test",
		AccessTokenUrl = "9e90019f-6256-41fa-a225-5ef9cc1d9bf8",
		ClientId = "e9ad8b1d-959c-4e86-8ba2-2cbf4d14bc29",
		KeyVaultName = "Keyvault",
		SecretName = "Test",
		SubscriptionId = "5ee98b73-d9df-43a7-8a92-36855054bdee",
		ResourceGroup = "SAPIAG Group",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ExternalOriginResourceConnectors.PostAsync(requestBody);


```