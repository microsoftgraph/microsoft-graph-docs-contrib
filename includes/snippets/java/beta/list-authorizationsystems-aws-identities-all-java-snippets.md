---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AwsIdentityCollectionPage all = graphClient.external().authorizationSystems("{id}").microsoft.graph.awsAuthorizationSystem().all()
	.buildRequest()
	.get();

```