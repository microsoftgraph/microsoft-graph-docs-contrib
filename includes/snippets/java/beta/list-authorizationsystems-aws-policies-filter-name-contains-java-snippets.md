---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsPolicyCollectionPage policies = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().policies()
	.buildRequest()
	.filter("contains(displayName, 'Buckets')")
	.get();

```