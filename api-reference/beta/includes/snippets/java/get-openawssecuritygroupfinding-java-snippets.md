---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenAwsSecurityGroupFinding openAwsSecurityGroupFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk2").microsoft.graph.openAwsSecurityGroupFinding()
	.buildRequest()
	.get();

```