---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UserAccountInformation
{
	AllowedAudiences = AllowedAudiences.Organization,
	CountryCode = "NO",
};
var result = await graphClient.Me.Profile.Account.PostAsync(requestBody);


```