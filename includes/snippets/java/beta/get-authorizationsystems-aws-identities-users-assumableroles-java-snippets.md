---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsRoleCollectionWithReferencesPage assumableRoles = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().users("{id}").assumableRoles()
	.buildRequest()
	.get();

```