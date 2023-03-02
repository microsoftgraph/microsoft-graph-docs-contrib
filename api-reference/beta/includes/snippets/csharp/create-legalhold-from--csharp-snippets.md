---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Ediscovery.LegalHold
{
	OdataType = "#microsoft.graph.ediscovery.legalHold",
	Description = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	IsEnabled = boolean,
	Status = Microsoft.Graph.Beta.Models.Ediscovery.LegalHoldStatus.Pending,
	ContentQuery = "String",
	Errors = new List<string>
	{
		"String",
	},
	DisplayName = "String",
};
var result = await graphClient.Compliance.Ediscovery.Cases["{case-id}"].LegalHolds.PostAsync(requestBody);


```