---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{application-id}"].ConnectorGroup.Reference
	.Request()
	.PutAsync("3e6f4c35-a04b-4d03-b98a-66fff89b72e6");

```