---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsUserCollectionWithReferencesPage users = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().users()
	.buildRequest()
	.get();

```