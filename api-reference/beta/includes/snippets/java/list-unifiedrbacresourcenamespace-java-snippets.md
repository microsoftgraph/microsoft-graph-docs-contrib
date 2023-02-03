---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRbacResourceNamespaceCollectionPage resourceNamespaces = graphClient.roleManagement().directory().resourceNamespaces()
	.buildRequest()
	.get();

```