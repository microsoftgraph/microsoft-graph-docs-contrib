---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicy unifiedRoleManagementPolicy = graphClient.policies().roleManagementPolicies("DirectoryRole_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448")
	.buildRequest()
	.expand("effectiveRules,rules")
	.get();

```