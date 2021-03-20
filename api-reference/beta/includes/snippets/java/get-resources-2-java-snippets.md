---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationSubmissionResourceCollectionPage resources = graphClient.education().classes("{id}").assignments("{id}").submissions("{id}").resources()
	.buildRequest()
	.get();

```