---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.external().industryData().sourceSystems("0c629a1a-a85c-4365-bdf0-623a32ca69cb")
	.buildRequest()
	.delete();

```