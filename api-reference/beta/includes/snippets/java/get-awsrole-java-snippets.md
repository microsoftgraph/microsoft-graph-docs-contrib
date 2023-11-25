---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsRole awsRole = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().roles("YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpyb2xlL3NlcnZpY2Vyb2xlMQ")
	.buildRequest()
	.get();

```