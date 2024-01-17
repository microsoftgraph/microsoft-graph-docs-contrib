---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedUserFinding overprovisionedUserFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxPdmVycHJvdmlzaW9uZWRVc2VyRmluZGluZywxMjU0MjA").microsoft.graph.overprovisionedUserFinding()
	.buildRequest()
	.get();

```