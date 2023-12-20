---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationGcpServiceAccountFinding privilegeEscalationGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxQcml2aWxlZ2VFc2NhbGF0aW9uR2NwU2VydmljZUFjY291bnRGaW5kaW5nLDE0OTMwOQ").microsoft.graph.privilegeEscalationGcpServiceAccountFinding()
	.buildRequest()
	.get();

```