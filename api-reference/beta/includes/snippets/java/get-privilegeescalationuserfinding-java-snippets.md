---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationUserFinding privilegeEscalationUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxQcml2aWxlZ2VFc2NhbGF0aW9uVXNlckZpbmRpbmcsNjI4MzQ").microsoft.graph.privilegeEscalationUserFinding()
	.buildRequest()
	.get();

```