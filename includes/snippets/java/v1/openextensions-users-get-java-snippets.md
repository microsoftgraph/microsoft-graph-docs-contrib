---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = graphClient.me()
	.buildRequest()
	.expand("extensions")
	.select("id,displayName,mail,mobilePhone")
	.get();

```