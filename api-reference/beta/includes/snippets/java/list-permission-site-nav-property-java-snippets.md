---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionCollectionPage permissions = graphClient.sites("f2d90359-865b-4b6c-8848-d2722dd630e5").permissions()
	.buildRequest()
	.get();

```