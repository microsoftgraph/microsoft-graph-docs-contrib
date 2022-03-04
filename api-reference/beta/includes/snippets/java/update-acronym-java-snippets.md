---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Acronym acronym = new Acronym();
acronym.description = "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.";

graphClient.search().acronyms("{acronymsId}")
	.buildRequest()
	.patch(acronym);

```