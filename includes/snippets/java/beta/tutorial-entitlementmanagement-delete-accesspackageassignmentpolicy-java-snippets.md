---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies("6c1f65ec-8c25-4a45-83c2-a1de2a6d0e9f")
	.buildRequest()
	.delete();

```