---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsPolicy awsPolicy = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().policies("{id}")
	.buildRequest()
	.get();

```