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
			{"Engineering", "{\"@odata.type\":\"#Microsoft.DirectoryServices.CustomSecurityAttributeValue\",\"ProjectDate\":\"2022-10-01\"}"}
		}
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```