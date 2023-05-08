---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/v1.0/education/users/14008",
};
await graphClient.Education.Schools["{educationSchool-id}"].Users.Ref.PostAsync(requestBody);


```