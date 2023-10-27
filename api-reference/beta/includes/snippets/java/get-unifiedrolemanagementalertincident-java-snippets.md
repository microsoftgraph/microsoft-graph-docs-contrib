---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertIncident unifiedRoleManagementAlertIncident = graphClient.identityGovernance().roleManagementAlerts().alerts("DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert").alertIncidents("a9f38501-74ec-43ea-8663-6c538602150d")
	.buildRequest()
	.get();

```