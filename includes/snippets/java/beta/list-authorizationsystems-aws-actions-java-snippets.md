---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsAuthorizationSystemTypeActionCollectionPage actions = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().actions()
	.buildRequest()
	.get();

```