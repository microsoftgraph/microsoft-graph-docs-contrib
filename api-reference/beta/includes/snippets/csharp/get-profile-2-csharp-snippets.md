---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profile = await graphClient.Me.Profile
	.Request()
	.Expand("names($select=first,last),skills($select=displayName)")
	.GetAsync();

```