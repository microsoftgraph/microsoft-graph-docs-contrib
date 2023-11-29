---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsAuthorizationSystemResource awsAuthorizationSystemResource = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().resources("{id}")
	.buildRequest()
	.get();

```