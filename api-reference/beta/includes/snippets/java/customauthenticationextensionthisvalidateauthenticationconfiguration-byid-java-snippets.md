---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().customAuthenticationExtensions("9f39f3bb-457c-4a2a-8099-0e480e7ea142")
	.validateAuthenticationConfiguration()
	.buildRequest()
	.post();

```