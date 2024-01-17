---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionResourceCollectionPage resources = graphClient.education().classes("2003c52e-807a-4186-9b49-60c573095461").assignments("8f5311bb-ee1e-4bf0-9827-3fd8c57bdde2").submissions("57ef8ee2-4755-4351-66d0-8e37192870a5").resources()
	.buildRequest()
	.orderBy("resource/createdDateTime")
	.get();

```