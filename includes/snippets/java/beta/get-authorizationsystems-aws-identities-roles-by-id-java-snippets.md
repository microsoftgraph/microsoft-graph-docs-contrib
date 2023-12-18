---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsRole awsRole = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().roles("{id}")
	.buildRequest()
	.get();

```