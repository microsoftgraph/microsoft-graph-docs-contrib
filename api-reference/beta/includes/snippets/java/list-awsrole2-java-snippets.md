---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsRoleCollectionWithReferencesPage roles = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().roles()
	.buildRequest()
	.get();

```