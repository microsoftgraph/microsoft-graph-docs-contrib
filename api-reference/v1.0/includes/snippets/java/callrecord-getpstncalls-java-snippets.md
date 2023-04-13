---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecord callRecord = graphClient.communications().callRecords("getPstnCalls(fromDateTime=2019-11-01,toDateTime=2019-12-01)")
	.buildRequest()
	.get();

```