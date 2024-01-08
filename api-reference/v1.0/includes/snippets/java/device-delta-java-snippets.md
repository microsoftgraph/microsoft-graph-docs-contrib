---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceDeltaCollectionPage delta = graphClient.devices()
	.delta()
	.buildRequest()
	.get();

```