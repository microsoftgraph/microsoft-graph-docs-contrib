---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Place place = graphClient.places("979e9793-3e91-40eb-b18c-0ea937893956")
	.buildRequest()
	.get();

```