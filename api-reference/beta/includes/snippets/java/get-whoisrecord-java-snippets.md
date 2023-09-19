---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WhoisRecord whoisRecord = graphClient.security().threatIntelligence().whoisRecords("Y29udG9zby5jb20kJDY5NjQ3ODEyMDc3NDY1NzI0MzM=")
	.buildRequest()
	.get();

```