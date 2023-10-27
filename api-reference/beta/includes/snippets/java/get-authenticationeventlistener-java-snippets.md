---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomAuthenticationExtension customAuthenticationExtension = graphClient.identity().customAuthenticationExtensions("6fc5012e-7665-43d6-9708-4370863f4e6e")
	.buildRequest()
	.get();

```