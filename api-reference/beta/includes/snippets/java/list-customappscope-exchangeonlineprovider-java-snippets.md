---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomAppScopeCollectionPage customAppScopes = graphClient.roleManagement().exchange().customAppScopes()
	.buildRequest()
	.get();

```