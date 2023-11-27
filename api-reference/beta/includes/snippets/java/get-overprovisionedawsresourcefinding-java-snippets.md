---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedAwsResourceFinding overprovisionedAwsResourceFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPdmVycHJvdmlzaW9uZWRBd3NSZXNvdXJjZUZpbmRpbmcsMzExNDk").microsoft.graph.overprovisionedAwsResourceFinding()
	.buildRequest()
	.get();

```