---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.search.Acronym acronym = new com.microsoft.graph.beta.models.search.Acronym();
acronym.setDisplayName("DNN");
acronym.setStandsFor("Deep Neural Network");
acronym.setDescription("A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.");
acronym.setWebUrl("http://microsoft.com/deep-neural-network");
acronym.setState(com.microsoft.graph.beta.models.search.AnswerState.Draft);
com.microsoft.graph.models.search.Acronym result = graphClient.search().acronyms().post(acronym);


```