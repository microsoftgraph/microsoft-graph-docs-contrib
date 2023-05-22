---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationRubric educationRubric = graphClient.education().me().rubrics("bf040af7-a5ff-4abe-a8c8-1bdc532344c2")
	.buildRequest()
	.get();

```