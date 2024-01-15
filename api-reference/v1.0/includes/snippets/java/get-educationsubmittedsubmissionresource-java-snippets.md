---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSubmissionResource educationSubmissionResource = graphClient.education().classes("f973bc68-2adb-4cf7-8b15-a57a1936b60c").assignments("8b890b42-a1df-478b-bff5-6814afb1afc2").submissions("6d71b348-898a-40cd-8e71-35127eed97f5").submittedResources("f2387c3b-ec39-4bf2-a399-d7242677f024")
	.buildRequest()
	.get();

```