---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Security.RetentionEventType
{
	OdataType = "#microsoft.graph.security.retentionEventType",
	DisplayName = "String",
	Description = "String",
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
};
var result = await graphClient.Security.TriggerTypes.RetentionEventTypes.PostAsync(requestBody);


```