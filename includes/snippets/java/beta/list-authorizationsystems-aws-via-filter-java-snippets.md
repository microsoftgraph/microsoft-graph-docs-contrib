---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationSystemCollectionPage authorizationSystems = graphClient.external().authorizationSystems()
	.buildRequest()
	.filter("authorizationSystemType eq 'aws'")
	.get();

```