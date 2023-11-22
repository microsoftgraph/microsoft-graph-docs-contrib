---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperUserFinding superUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxTdXBlclVzZXJGaW5kaW5nLDE1NDczMQ").microsoft.graph.superUserFinding()
	.buildRequest()
	.get();

```