---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertIncidentCollectionPage alertIncidents = graphClient.identityGovernance().roleManagementAlerts().alerts("DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert").alertIncidents()
	.buildRequest()
	.top(5)
	.get();

```