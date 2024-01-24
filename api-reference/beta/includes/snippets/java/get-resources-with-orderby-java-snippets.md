---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResourceCollectionPage resources = graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignments("131eeaaa-829e-4c6c-9cf3-491b1320fe4d").resources()
	.buildRequest()
	.orderBy("resource/createdDateTime")
	.get();

```