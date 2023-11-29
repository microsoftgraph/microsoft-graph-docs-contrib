---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationAwsRoleFindingCollectionPage privilegeEscalationAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.privilegeEscalationAwsRoleFinding()
	.buildRequest()
	.get();

```