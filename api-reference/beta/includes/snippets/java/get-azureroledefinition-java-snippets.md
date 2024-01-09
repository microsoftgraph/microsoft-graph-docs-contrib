---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureRoleDefinition azureRoleDefinition = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().roleDefinitions("YjI0OTg4YWMtNjE4MC00MmEwLWFiODgtMjBmNzM4MmRkMjRj")
	.buildRequest()
	.get();

```