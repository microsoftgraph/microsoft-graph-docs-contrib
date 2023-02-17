---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Place place = graphClient.places("Building2Rooms@M365x214355.onmicrosoft.com")
	.buildRequest()
	.get();

```