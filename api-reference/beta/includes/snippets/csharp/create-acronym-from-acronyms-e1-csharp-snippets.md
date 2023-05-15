---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Search.Acronym
{
	DisplayName = "DNN",
	StandsFor = "Deep Neural Network",
	Description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
	WebUrl = "http://microsoft.com/deep-neural-network",
	State = Microsoft.Graph.Beta.Models.Search.AnswerState.Draft,
};
var result = await graphClient.Search.Acronyms.PostAsync(requestBody);


```