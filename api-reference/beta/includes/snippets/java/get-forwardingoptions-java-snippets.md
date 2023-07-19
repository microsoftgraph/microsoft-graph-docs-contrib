---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingOptions forwardingOptions = graphClient.networkAccess().settings().forwardingOptions()
	.buildRequest()
	.get();

```