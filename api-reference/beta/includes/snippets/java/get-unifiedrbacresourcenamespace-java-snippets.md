---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRbacResourceNamespace unifiedRbacResourceNamespace = graphClient.roleManagement().directory().resourceNamespaces("microsoft.aad.b2c")
	.buildRequest()
	.get();

```