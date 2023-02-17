---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	CustomSecurityAttributes = new CustomSecurityAttributeValue
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"Engineering", "{\"@odata.type\":\"#Microsoft.DirectoryServices.CustomSecurityAttributeValue\",\"NumVendors@odata.type\":\"#Int32\",\"NumVendors\":4}"}
		}
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```