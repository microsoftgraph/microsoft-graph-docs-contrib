---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAzureServicePrincipalFinding inactiveAzureServicePrincipalFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxJbmFjdGl2ZUF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMTA3NDQz").microsoft.graph.inactiveAzureServicePrincipalFinding()
	.buildRequest()
	.get();

```