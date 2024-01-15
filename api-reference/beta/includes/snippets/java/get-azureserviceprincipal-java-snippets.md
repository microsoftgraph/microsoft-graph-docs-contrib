---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureServicePrincipal azureServicePrincipal = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().servicePrincipals("NDVjM2I2YmYtNTBjNS00MmQyLWJkNmItMGNjY2ZjZmE2NjNl")
	.buildRequest()
	.get();

```