---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategory educationCategory = graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignmentCategories("delta")
	.buildRequest()
	.get();

```