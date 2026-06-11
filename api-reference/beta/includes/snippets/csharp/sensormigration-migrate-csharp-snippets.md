---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Identities.SensorMigration.MicrosoftGraphSecurityMigrate;

var requestBody = new MigratePostRequestBody
{
	SensorIds = new List<string>
	{
		"fdce0c43-15e8-e322-7656-aff297505af5",
		"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Identities.SensorMigration.MicrosoftGraphSecurityMigrate.PostAsync(requestBody);


```