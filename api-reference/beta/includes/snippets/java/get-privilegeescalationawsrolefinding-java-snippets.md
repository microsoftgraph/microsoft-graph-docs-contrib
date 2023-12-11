---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationAwsRoleFinding privilegeEscalationAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxQcml2aWxlZ2VFc2NhbGF0aW9uQXdzUm9sZUZpbmRpbmcsOTg0MzI").microsoft.graph.privilegeEscalationAwsRoleFinding()
	.buildRequest()
	.get();

```