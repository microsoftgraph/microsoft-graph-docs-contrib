---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PassiveDnsRecord passiveDnsRecord = graphClient.security().threatIntelligence().passiveDnsRecords("Y29udG9zby5jb20kJDIwLjEwMy44NS4zMyQkZmFsc2U=")
	.buildRequest()
	.get();

```