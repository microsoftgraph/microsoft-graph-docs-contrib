---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	OnPremisesExtensionAttributes = new OnPremisesExtensionAttributes
	{
		ExtensionAttribute1 = "skypeId.adeleVance",
		ExtensionAttribute13 = null
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```