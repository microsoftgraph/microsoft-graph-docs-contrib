---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveGroupFinding inactiveGroupFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NA").microsoft.graph.inactiveGroupFinding()
	.buildRequest()
	.get();

```