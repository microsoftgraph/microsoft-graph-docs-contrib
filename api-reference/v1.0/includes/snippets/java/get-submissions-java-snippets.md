---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionCollectionPage submissions = graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("4cc928e3-666c-4360-8688-a15776ce53b4").submissions()
	.buildRequest()
	.get();

```