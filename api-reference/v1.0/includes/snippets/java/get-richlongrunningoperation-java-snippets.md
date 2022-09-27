---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RichLongRunningOperation richLongRunningOperation = graphClient.sites("root").operations("contentTypeCopy,0x010100298A15181454D84EBB62EDD7559FCBFE")
	.buildRequest()
	.get();

```