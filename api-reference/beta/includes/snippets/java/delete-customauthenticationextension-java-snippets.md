---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().customAuthenticationExtensions("5c82815a-ee61-4c9b-9f4b-914a708a0c68")
	.buildRequest()
	.delete();

```