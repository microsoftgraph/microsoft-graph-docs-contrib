---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().roleManagementAlerts().alerts("DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert").alertIncidents("9e864769-63e3-4635-8069-551bcd46183d")
	.remediate()
	.buildRequest()
	.post();

```