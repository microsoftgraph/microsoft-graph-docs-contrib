---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactMergeSuggestions = new ContactMergeSuggestions
{
	IsEnabled = false
};

await graphClient.Me.Settings.ContactMergeSuggestions
	.Request()
	.UpdateAsync(contactMergeSuggestions);

```