---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Contact
{
	HomeAddress = new PhysicalAddress
	{
		Street = "123 Some street",
		City = "Seattle",
		State = "WA",
		PostalCode = "98121",
	},
	Birthday = DateTimeOffset.Parse("1974-07-22"),
};
var result = await graphClient.Me.Contacts["{contact-id}"].PatchAsync(requestBody);


```