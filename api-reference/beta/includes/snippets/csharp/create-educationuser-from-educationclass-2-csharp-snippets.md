---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/education/users/14011",
};
await graphClient.Education.Classes["{educationClass-id}"].Teachers.Ref.PostAsync(requestBody);


```