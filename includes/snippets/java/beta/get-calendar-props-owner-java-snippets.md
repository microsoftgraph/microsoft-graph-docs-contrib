---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Calendar calendar = graphClient.users("AlexW@contoso.OnMicrosoft.com").calendar()
	.buildRequest()
	.get();

```