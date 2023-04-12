---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPublication
{
	Description = "One persons journey to the top of the branding management field.",
	DisplayName = "Got Brands? The story of Innocenty Popov and his journey to the top.",
	PublishedDate = new Date(DateTime.Parse("Date")),
	Publisher = "International Association of Branding Management Publishing",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
	WebUrl = "https://www.iabm.io",
};
var result = await graphClient.Me.Profile.Publications.PostAsync(requestBody);


```