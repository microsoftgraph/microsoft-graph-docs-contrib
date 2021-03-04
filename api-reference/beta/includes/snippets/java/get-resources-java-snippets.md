---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationAssignmentResourceCollectionPage resources = graphClient.education().classes("11012").assignments("19002").resources()
	.buildRequest()
	.get();

```