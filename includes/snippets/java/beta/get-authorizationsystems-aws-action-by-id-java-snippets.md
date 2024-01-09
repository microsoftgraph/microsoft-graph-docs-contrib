---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsAuthorizationSystemTypeAction awsAuthorizationSystemTypeAction = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().actions("{id}")
	.buildRequest()
	.get();

```