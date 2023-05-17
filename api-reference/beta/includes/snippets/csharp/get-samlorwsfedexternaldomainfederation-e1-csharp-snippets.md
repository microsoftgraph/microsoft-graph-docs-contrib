---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Directory.FederationConfigurations["{identityProviderBase-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "domains/any";
});


```