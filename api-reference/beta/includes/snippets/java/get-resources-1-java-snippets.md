---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResourceCollectionPage resources = graphClient.education().classes("f4a941ff-9da6-4707-ba5b-0eae93cad0b4").assignments("9018ae7a-9953-4796-a152-4c54e0910922").resources()
	.buildRequest()
	.get();

```