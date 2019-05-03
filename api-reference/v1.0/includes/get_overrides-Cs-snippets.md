
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var inferenceClassificationOverride = await graphClient.Me.InferenceClassification.Overrides
	.Request()
	.GetAsync();

```