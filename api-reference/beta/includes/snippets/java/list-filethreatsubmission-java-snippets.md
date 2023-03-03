---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FileThreatSubmissionCollectionPage fileThreats = graphClient.security().threatSubmission().fileThreats()
	.buildRequest()
	.get();

```