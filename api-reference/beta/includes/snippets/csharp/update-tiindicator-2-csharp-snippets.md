---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TiIndicator
{
	AdditionalInformation = "additionalInformation-after-update",
	Confidence = 42,
	Description = "description-after-update",
};
var result = await graphClient.Security.TiIndicators["{tiIndicator-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
});


```