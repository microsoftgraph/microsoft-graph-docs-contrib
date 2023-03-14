---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new InferenceClassificationOverride
{
	ClassifyAs = InferenceClassificationType.Focused,
	SenderEmailAddress = new EmailAddress
	{
		Name = "Samantha Booth",
		Address = "samanthab@adatum.onmicrosoft.com",
	},
};
var result = await graphClient.Me.InferenceClassification.Overrides.PostAsync(requestBody);


```