---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EngagementAsyncOperation engagementAsyncOperation = graphClient.employeeExperience().engagementAsyncOperations("a6fdce1-c261-48bc-89de-1cfef658c0d5")
	.buildRequest()
	.get();

```