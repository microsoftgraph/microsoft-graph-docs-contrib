---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrivilegeEscalationAwsResourceFinding privilegeEscalationAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("cHJpdmlsZWdlRXNjYWxhdGlvblJlc291cmNlRmluZGluZzEwMDAx").microsoft.graph.privilegeEscalationAwsResourceFinding()
	.buildRequest()
	.get();

```