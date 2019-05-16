---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var instances = await graphClient.Me.Events["AAMkAGUzYRgWAAA="].Instances
	.Request()
	.Select( e => new {
			 e.Subject,
			 e.BodyPreview,
			 e.SeriesMasterId,
			 e.Type,
			 e.Recurrence,
			 e.Start,
			 e.End 
			 })
	.GetAsync();

```