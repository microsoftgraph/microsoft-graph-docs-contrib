---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallTranscriptCollectionPage transcripts = graphClient.users("ba321e0d-79ee-478d-8e28-85a19507f456").onlineMeetings("MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ").transcripts()
	.buildRequest()
	.get();

```