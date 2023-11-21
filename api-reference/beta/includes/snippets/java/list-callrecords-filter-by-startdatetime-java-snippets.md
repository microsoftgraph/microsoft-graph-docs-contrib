---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecordCollectionPage callRecords = graphClient.communications().callRecords()
	.buildRequest()
	.filter("startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z")
	.get();

```