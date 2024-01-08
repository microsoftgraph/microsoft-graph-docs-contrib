---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LearningContentCollectionPage learningContents = graphClient.employeeExperience().learningProviders("13727311-e7bb-470d-8b20-6a23d9030d70").learningContents()
	.buildRequest()
	.get();

```