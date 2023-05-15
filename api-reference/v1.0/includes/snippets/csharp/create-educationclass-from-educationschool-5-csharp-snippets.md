---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/education/classes/11006",
};
await graphClient.Education.Schools["{educationSchool-id}"].Classes.Ref.PostAsync(requestBody);


```