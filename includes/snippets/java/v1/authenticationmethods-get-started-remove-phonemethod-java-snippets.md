---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("CameronW@Contoso.com").authentication().phoneMethods("e37fc753-ff3b-4958-9484-eaa9425c82bc")
	.buildRequest()
	.delete();

```