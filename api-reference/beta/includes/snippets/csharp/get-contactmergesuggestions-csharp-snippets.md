---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactMergeSuggestions = await graphClient.Me.Settings.ContactMergeSuggestions
	.Request()
	.GetAsync();

```