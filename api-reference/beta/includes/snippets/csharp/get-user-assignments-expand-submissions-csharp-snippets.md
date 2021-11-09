---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("expand", "submissions")
};

var assignments = await graphClient.Education.Users["{educationUser-id}"].Assignments
	.Request( queryOptions )
	.GetAsync();

```