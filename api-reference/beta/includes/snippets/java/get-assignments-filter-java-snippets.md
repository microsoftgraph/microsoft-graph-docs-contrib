---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentCollectionPage assignments = graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments()
	.buildRequest()
	.filter("status eq 'assigned'")
	.get();

```