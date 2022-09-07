---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningProviderCollectionPage learningProviders = graphClient.employeeExperience().learningProviders()
	.buildRequest()
	.get();

```