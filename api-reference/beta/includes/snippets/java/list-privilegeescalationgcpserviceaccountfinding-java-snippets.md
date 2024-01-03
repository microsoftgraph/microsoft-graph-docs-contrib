---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationGcpServiceAccountFindingCollectionPage privilegeEscalationGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.privilegeEscalationGcpServiceAccountFinding()
	.buildRequest()
	.get();

```