---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.SourceCollection
{
	DisplayName = "Quarterly Financials search",
	ContentQuery = "subject:'Quarterly Financials'",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"custodianSources@odata.bind" , new List<string>
			{
				"https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735",
			}
		},
	},
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].SourceCollections.PostAsync(requestBody);


```