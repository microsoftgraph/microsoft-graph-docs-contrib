---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonAnnotation
{
	AllowedAudiences = AllowedAudiences.Organization,
};
var result = await graphClient.Users["{user-id}"].Profile.Notes["{personAnnotation-id}"].PatchAsync(requestBody);


```