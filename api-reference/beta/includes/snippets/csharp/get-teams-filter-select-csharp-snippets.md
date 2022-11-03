---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teams = await graphClient.Teams
	.Request()
	.Filter("displayName eq 'A Contoso Team'")
	.Select("id,description")
	.GetAsync();

```