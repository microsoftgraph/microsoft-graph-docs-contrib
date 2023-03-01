---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UserAccountInformation
{
	CountryCode = "NO",
};
var result = await graphClient.Me.Profile.Account["{userAccountInformation-id}"].PatchAsync(requestBody);


```