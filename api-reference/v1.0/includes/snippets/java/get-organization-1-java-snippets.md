---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Organization organization = graphClient.organization("dcd219dd-bc68-4b9b-bf0b-4a33a796be35")
	.buildRequest()
	.get();

```