---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new InferenceClassificationOverride
{
	ClassifyAs = InferenceClassificationType.Focused,
};
var result = await graphClient.Me.InferenceClassification.Overrides["{inferenceClassificationOverride-id}"].PatchAsync(requestBody);


```