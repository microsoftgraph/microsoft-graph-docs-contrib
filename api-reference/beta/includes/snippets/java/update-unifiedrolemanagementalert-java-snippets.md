---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlert unifiedRoleManagementAlert = new UnifiedRoleManagementAlert();
unifiedRoleManagementAlert.isActive = false;

graphClient.identityGovernance().roleManagementAlerts().alerts("DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_StaleSignInAlert")
	.buildRequest()
	.patch(unifiedRoleManagementAlert);

```