---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyAssignmentCollectionPage roleManagementPolicyAssignments = graphClient.policies().roleManagementPolicyAssignments()
	.buildRequest()
	.filter("scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'")
	.get();

```