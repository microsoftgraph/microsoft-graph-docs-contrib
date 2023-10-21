---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureADAuthentication azureADAuthentication = graphClient.reports().sla().azureADAuthentication()
	.buildRequest()
	.get();

```