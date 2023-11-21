---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecordCollectionPage callRecords = graphClient.communications().callRecords()
	.buildRequest()
	.filter("participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')")
	.get();

```