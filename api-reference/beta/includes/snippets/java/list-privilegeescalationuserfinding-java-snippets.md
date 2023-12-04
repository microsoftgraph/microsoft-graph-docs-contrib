---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationUserFindingCollectionPage privilegeEscalationUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.privilegeEscalationUserFinding()
	.buildRequest()
	.get();

```