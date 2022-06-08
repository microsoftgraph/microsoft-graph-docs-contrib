---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CommsOperation commsOperation = graphClient.communications().calls("57dab8b1-894c-409a-b240-bd8beae78896").operations("e33176d4-836a-4fd7-b95a-d11bda52811d")
	.buildRequest()
	.get();

```