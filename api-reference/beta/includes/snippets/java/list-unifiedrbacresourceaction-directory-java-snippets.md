---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRbacResourceActionCollectionPage resourceActions = graphClient.roleManagement().directory().resourceNamespaces("microsoft.directory").resourceActions()
	.buildRequest()
	.get();

```