---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var acronym = new Microsoft.Graph.Search.Acronym
{
	DisplayName = "DNN",
	StandsFor = "Deep Neural Network",
	Description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
	WebUrl = "http://microsoft.com/deep-neural-network",
	State = Microsoft.Graph.Search.AnswerState.Draft
};

await graphClient.Search.Acronyms
	.Request()
	.AddAsync(acronym);

```