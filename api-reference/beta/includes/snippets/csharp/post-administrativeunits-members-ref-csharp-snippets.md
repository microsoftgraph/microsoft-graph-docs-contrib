---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/groups/{id}",
};
await graphClient.AdministrativeUnits["{administrativeUnit-id}"].Members.Ref.PostAsync(requestBody);


```