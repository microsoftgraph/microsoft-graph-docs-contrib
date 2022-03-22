---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = graphClient.me().events("AAMkADAGAADDdm4NAAA=")
	.buildRequest()
	.expand("exceptionOccurrences,cancelledOccurrences")
	.select("subject,start,end,occurrenceId,exceptionOccurrences,cancelledOccurrences")
	.get();

```