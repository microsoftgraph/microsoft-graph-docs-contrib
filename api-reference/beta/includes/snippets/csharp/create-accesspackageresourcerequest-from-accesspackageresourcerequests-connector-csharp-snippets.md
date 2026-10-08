---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "bcb19bf7-cdf7-4a70-a106-f6543620b2a5",
	AccessPackageResource = new AccessPackageResource
	{
		Id = "88eb460d-ca08-4eb9-afae-8d60a8b00377",
		DisplayName = "SAP IAG Access Rights",
		Description = "This resource represents the business roles of SAP IAG",
		ResourceType = "Business role",
		OriginId = "https://iagintgorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com",
		OriginSystem = "External",
		AccessPackageResourceScopes = new List<AccessPackageResourceScope>
		{
		},
		ExternalOriginResourceConnector = new ExternalOriginResourceConnector
		{
			Id = "1a53cea5-48bd-467c-af81-a24245b0df2b",
			DisplayName = "SAP IAG 10.0",
			Description = "SAP IAG 10.0.0",
			ConnectorType = ConnectorType.SapIag,
			ConnectionInfo = new ExternalTokenBasedSapIagConnectionInfo
			{
				OdataType = "microsoft.graph.externalTokenBasedSapIagConnectionInfo",
				Url = "https://iagigorg-iag-intg-space-java-rest-arqapi.cfapps.sap.hana.ondemand.com",
				SubscriptionId = "8e072eb5-73f5-4ed2-9324-a734dcb9728",
				ResourceGroup = "SAPResourceGroup",
				AccessTokenUrl = "https://entra-docu-intg-mrrd3gv.authentication.sap.hana.ondemand.com/oauth/token",
				ClientId = "sb-72062308-a7ae-456f-b9a4-24302b8a4aa!b247012|iagapi-iag-intg-space!b11378",
				KeyVaultName = "SAPIAG-KV",
				SecretName = "ClientSecret",
			},
		},
		AccessPackageResourceEnvironment = null,
	},
	RequestType = "AdminAdd",
	ExecuteImmediately = true,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"history" , new List<object>
			{
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```