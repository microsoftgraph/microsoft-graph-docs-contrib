---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Acronym acronym = new Acronym();
acronym.displayName = "DNN";
acronym.standsFor = "Deep Neural Network";
acronym.description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.";
acronym.webUrl = "http://microsoft.com/deep-neural-network";
acronym.state = AnswerState.DRAFT;

graphClient.search().acronyms()
	.buildRequest()
	.post(acronym);

```