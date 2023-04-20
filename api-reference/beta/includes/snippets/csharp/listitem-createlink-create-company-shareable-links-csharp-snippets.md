---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "edit";

var scope = "organization";

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"]
	.CreateLink(type,scope,null,null,null,null)
	.Request()
	.PostAsync();

```