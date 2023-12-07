---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AzureIdentity azureIdentity = graphClient.external().authorizationSystems("{id}").microsoft.graph.azureAuthorizationSystem().all("YWxpY2VAY29udG9zby5jb20")
	.buildRequest()
	.get();

```