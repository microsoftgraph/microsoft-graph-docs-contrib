---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.users("ce02eca8-752b-4ecf-ac29-aa9bccd87606")
	.buildRequest()
	.delete();

```