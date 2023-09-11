---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceUpdate
{
	OdataId = "https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}",
};
await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].ApiConnectorConfiguration.PostFederationSignup.Ref.PutAsync(requestBody);


```