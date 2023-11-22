---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsAuthorizationSystemResourceCollectionPage resources = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().resources()
	.buildRequest()
	.get();

```