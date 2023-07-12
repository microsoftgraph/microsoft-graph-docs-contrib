---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ForwardingOptions forwardingOptions = new ForwardingOptions();
forwardingOptions.skipDnsLookupState = Status.DISABLED;

graphClient.networkAccess().settings().forwardingOptions()
	.buildRequest()
	.patch(forwardingOptions);

```