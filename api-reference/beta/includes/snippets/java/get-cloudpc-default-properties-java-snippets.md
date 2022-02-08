---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPC cloudPC = graphClient.deviceManagement().virtualEndpoint().cloudPCs("9ec90ff8-fd63-4fb9-ab5a-aa4fdcc43ec9")
	.buildRequest()
	.get();

```