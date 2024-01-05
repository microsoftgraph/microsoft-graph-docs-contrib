---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationAwsResourceFindingCollectionPage privilegeEscalationAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.privilegeEscalationAwsResourceFinding()
	.buildRequest()
	.get();

```