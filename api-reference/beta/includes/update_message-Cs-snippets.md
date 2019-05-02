
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var body = new ItemBody
{
	ContentType = BodyType.Text,
	Content = "content-value",
};

var message = new Message
{
	Subject = "subject-value",
	Body = body,
	InferenceClassification = InferenceClassificationType.Other,
};

await graphClient.Me.Messages["{id}"]
	.Request()
	.UpdateAsync(message);

```