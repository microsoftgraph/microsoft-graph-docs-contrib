---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = graphClient.me().calendar().events("AAMkADJXJGu0AABf02qwAAA=")
	.buildRequest()
	.get();

```