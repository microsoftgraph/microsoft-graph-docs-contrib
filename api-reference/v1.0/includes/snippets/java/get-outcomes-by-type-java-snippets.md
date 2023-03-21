---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationOutcomeCollectionPage outcomes = graphClient.education().classes("37d99af7-cfc5-4e3b-8566-f7d40e4a2070").assignments("a3cce0ba-2008-4c4d-bf62-079408562d96").submissions("2185e6d7-2924-4ed1-dde1-269f89e29184").outcomes()
	.buildRequest()
	.filter("isof('microsoft.graph.educationFeedbackResourceOutcome')")
	.get();

```