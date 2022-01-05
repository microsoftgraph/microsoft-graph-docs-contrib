---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmission educationSubmission = graphClient.education().classes("59069eb2-2a09-4d90-bb19-2089cc69d613").assignments("80da1069-a635-4913-813f-d775a5470a8f").submissions("869369de-3e5a-89eb-6f2d-83cd88f860b5")
	.buildRequest()
	.get();

```