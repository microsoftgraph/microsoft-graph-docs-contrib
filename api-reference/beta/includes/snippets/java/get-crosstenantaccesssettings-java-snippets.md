---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessSettings crossTenantAccessSettings = graphClient.networkAccess().settings().crossTenantAccess()
	.buildRequest()
	.get();

```