---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsIdentity awsIdentity = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().all("YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjp1c2VyL2JvYg")
	.buildRequest()
	.get();

```