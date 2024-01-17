---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationSystemTypeService authorizationSystemTypeService = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().services("ec2")
	.buildRequest()
	.get();

```