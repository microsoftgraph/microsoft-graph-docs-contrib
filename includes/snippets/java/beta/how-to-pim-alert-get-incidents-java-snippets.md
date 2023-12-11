---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementAlertIncidentCollectionPage alertIncidents = graphClient.identityGovernance().roleManagementAlerts().alerts("DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert").alertIncidents()
	.buildRequest()
	.get();

```