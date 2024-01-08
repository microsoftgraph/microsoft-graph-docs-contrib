---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Finding finding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("overprovisionedAzureServicePrincipalFinding")
	.buildRequest()
	.get();

```