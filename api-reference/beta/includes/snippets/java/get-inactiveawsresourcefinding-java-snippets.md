---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAwsResourceFinding inactiveAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxJbmFjdGl2ZUF3c1Jlc291cmNlRmluZGluZywxNDA1Ng").microsoft.graph.inactiveAwsResourceFinding()
	.buildRequest()
	.get();

```