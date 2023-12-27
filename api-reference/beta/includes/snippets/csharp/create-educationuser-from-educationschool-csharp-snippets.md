---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ReferenceCreate
{
	OdataId = "https://graph.microsoft.com/beta/education/users/14008",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Education.Schools["{educationSchool-id}"].Users.Ref.PostAsync(requestBody);


```