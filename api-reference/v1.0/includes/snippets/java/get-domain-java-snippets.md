---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Domain domain = graphClient.domains("M365x214355.onmicrosoft.com")
	.buildRequest()
	.get();

```