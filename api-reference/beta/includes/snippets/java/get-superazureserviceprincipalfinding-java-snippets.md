---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAzureServicePrincipalFinding superAzureServicePrincipalFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxTdXBlckF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMjI2ODM").microsoft.graph.superAzureServicePrincipalFinding()
	.buildRequest()
	.get();

```