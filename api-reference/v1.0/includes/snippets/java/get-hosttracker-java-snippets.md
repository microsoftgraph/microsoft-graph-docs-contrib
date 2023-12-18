---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostTracker hostTracker = graphClient.security().threatIntelligence().hostTrackers("Y29udG9zby1hZHZlcnRpc2luZzkyNDEwQ29udG9zb0lkOTI0MTBhYm91dC5hZHMuY29udG9zby5jb20=")
	.buildRequest()
	.get();

```