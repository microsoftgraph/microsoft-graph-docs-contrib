---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationSystem authorizationSystem = graphClient.external().authorizationSystems("956987887735")
	.buildRequest()
	.get();

```