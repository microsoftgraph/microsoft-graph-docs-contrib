---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PersonCertification
{
	CertificationId = "KB-1235466333663322",
	Description = "Blackbelt in Marketing - Brand Management",
	DisplayName = "Marketing Blackbelt - Brand Management",
	ThumbnailUrl = "https://iame.io/dfhdfdfd334.jpg",
	WebUrl = "https://www.iame.io/blackbelt",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Certifications.PostAsync(requestBody);


```