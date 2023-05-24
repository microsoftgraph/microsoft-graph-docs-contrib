---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonCertification
{
	IssuingAuthority = "International Academy of Marketing Excellence",
	IssuingCompany = "International Academy of Marketing Excellence",
};
var result = await graphClient.Users["{user-id}"].Profile.Certifications["{personCertification-id}"].PatchAsync(requestBody);


```