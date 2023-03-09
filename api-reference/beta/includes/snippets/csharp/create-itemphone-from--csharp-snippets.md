---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPhone
{
	DisplayName = "Car Phone",
	Number = "+7 499 342 22 13",
};
var result = await graphClient.Me.Profile.Phones.PostAsync(requestBody);


```