---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemActivityStat itemActivityStat = graphClient.drives("{drive-id}").items("{item-id}").analytics().allTime()
	.buildRequest()
	.get();

```