---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.applications("fd918e4b-c821-4efb-b50a-5eddd23afc6f").extensionProperties("1f0f15e3-925d-40f0-8fc8-9d3ad135bce0")
	.buildRequest()
	.delete();

```