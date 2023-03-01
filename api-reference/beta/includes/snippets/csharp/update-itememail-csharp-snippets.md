---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemEmail
{
	DisplayName = "Business Email",
	Type = EmailType.Work,
};
var result = await graphClient.Users["{user-id}"].Profile.Emails["{itemEmail-id}"].PatchAsync(requestBody);


```