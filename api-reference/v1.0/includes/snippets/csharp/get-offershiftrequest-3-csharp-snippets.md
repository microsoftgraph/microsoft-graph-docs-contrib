---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OfferShiftRequest
{
	SenderShiftId = "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29",
	SenderMessage = "Having a family emergency, could you take this shift for me?",
	RecipientUserId = "fe278b61-21ac-4872-8b41-1962bbb98e3c",
};
var result = await graphClient.Teams["{team-id}"].Schedule.OfferShiftRequests.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Authorization", "Bearer {token}");
});


```