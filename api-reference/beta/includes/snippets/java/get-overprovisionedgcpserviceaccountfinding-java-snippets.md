---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedGcpServiceAccountFinding overprovisionedGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings("MSxPdmVycHJvdmlzaW9uZWRHY3BTZXJ2aWNlQWNjb3VudEZpbmRpbmcsODM1Mw").microsoft.graph.overprovisionedGcpServiceAccountFinding()
	.buildRequest()
	.get();

```