---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CustomAppScope customAppScope = graphClient.roleManagement().exchange().customAppScopes("a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd")
	.buildRequest()
	.get();

```