---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var documentSetVersion = new DocumentSetVersion
{
	Comment = "v1",
	ShouldCaptureMinorVersion = false
};

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"].DocumentSetVersions
	.Request()
	.AddAsync(documentSetVersion);

```