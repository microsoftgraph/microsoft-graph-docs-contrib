---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPatent
{
	Description = "Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.",
	DisplayName = "Inferring User Intent through browsing behaviors",
	IsPending = true,
	Number = "USPTO-3954432633",
	WebUrl = "https://patents.gov/3954432633",
};
var result = await graphClient.Me.Profile.Patents.PostAsync(requestBody);


```