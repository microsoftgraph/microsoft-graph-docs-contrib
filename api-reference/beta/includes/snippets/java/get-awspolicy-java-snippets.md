---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsPolicy awsPolicy = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().policies("YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpwb2xpY3kvQUFBLWxpc3RQdXRHZXRBbGxCdWNrZXRz")
	.buildRequest()
	.get();

```