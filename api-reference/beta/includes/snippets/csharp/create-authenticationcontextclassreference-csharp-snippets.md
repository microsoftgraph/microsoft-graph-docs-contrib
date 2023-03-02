---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationContextClassReference
{
	Id = "c1",
	DisplayName = "Contoso medium",
	Description = "Medium protection level defined for Contoso policy",
	IsAvailable = true,
};
var result = await graphClient.Identity.ConditionalAccess.AuthenticationContextClassReferences.PostAsync(requestBody);


```