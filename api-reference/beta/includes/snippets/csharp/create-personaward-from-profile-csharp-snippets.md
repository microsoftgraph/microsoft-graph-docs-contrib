---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonAward
{
	Description = "Lifetime Achievement award from the International Association of Branding Managers",
	DisplayName = "Lifetime Achievement Award For Excellence in Branding",
	IssuedDate = new Date(DateTime.Parse("Date")),
	IssuingAuthority = "International Association of Branding Management",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
	WebUrl = "https://www.iabm.io",
};
var result = await graphClient.Me.Profile.Awards.PostAsync(requestBody);


```