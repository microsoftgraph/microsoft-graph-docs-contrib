
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var inferenceClassificationOverride = new InferenceClassificationOverride
{
	ClassifyAs = InferenceClassificationType.Focused,
};

await graphClient.Me.InferenceClassification.Overrides["{id}"]
	.Request()
	.UpdateAsync(inferenceClassificationOverride);

```