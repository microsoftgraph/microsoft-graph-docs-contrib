---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationSubmissionCollectionPage submissions = graphClient.education().classes("11021").assignments("19002").submissions()
	.buildRequest()
	.get();

```