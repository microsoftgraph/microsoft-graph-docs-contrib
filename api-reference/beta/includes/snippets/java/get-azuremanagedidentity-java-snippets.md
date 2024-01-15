---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureManagedIdentity azureManagedIdentity = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().managedIdentities("YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4")
	.buildRequest()
	.get();

```