---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var documentSetVersions = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].DocumentSetVersions
	.Request()
	.GetAsync();

```