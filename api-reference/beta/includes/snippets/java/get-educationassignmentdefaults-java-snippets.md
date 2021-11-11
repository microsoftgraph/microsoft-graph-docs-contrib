---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentDefaults educationAssignmentDefaults = graphClient.education().classes("72a7baec-c3e9-4213-a850-f62de0adad5f").assignmentDefaults()
	.buildRequest()
	.get();

```