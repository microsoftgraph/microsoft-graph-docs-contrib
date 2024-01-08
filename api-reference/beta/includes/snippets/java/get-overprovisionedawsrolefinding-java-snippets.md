---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedAwsRoleFinding overprovisionedAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPdmVycHJvdmlzaW9uZWRBd3NSb2xlRmluZGluZywxNzYzMTk").microsoft.graph.overprovisionedAwsRoleFinding()
	.buildRequest()
	.get();

```