---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedServerlessFunctionFinding overprovisionedServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxPdmVycHJvdmlzaW9uZWRTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW5nLDQ3MDQ").microsoft.graph.overprovisionedServerlessFunctionFinding()
	.buildRequest()
	.get();

```