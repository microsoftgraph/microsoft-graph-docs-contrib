---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String scopeId = "/";

String scopeType = "DirectoryRole";

graphClient.identityGovernance().roleManagementAlerts().alerts()
	.refresh(UnifiedRoleManagementAlertRefreshParameterSet
		.newBuilder()
		.withScopeType(scopeType)
		.withScopeId(scopeId)
		.build())
	.buildRequest()
	.post();

```