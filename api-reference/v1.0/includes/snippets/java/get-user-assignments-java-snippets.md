---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentCollectionPage assignments = graphClient.education().users("f3a5344e-dbde-48b0-be24-b5b62a243836").assignments()
	.buildRequest()
	.get();

```