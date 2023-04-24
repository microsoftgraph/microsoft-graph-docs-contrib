---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/education/classes/11006",
};
await graphClient.Education.Schools["{educationSchool-id}"].Classes.Ref.PostAsync(requestBody);


```