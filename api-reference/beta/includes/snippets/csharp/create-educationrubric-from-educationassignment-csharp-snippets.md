---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ReferenceUpdate
{
	OdataId = "https://graph.microsoft.com/v1.0/education/me/rubrics/{id}",
};
await graphClient.Education.Classes["{educationClass-id}"].Assignments["{educationAssignment-id}"].Rubric.Ref.PutAsync(requestBody);


```