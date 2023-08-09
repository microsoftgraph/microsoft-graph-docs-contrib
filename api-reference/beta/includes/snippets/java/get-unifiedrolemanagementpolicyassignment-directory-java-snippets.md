---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyAssignment unifiedRoleManagementPolicyAssignment = graphClient.policies().roleManagementPolicyAssignments("DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_13b24d89-6e5a-46d5-b0d7-531c0846570a_29232cdf-9323-42fd-ade2-1d097af3e4de")
	.buildRequest()
	.get();

```