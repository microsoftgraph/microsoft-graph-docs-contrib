---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPatent
{
	Number = "USPTO-3954432633",
	WebUrl = "https://patents.gov/3954432633",
};
var result = await graphClient.Users["{user-id}"].Profile.Patents["{itemPatent-id}"].PatchAsync(requestBody);


```