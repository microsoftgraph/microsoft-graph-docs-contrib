---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PersonCertification
{
	IssuingAuthority = "International Academy of Marketing Excellence",
	IssuingCompany = "International Academy of Marketing Excellence",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].Profile.Certifications["{personCertification-id}"].PatchAsync(requestBody);


```