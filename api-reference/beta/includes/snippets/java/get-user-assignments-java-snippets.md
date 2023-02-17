---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentCollectionPage assignments = graphClient.education().users("80cefd93-8d88-40e2-b5d3-67898383e226").assignments()
	.buildRequest()
	.get();

```