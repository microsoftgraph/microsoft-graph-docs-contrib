---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

FileThreatSubmission fileThreatSubmission = graphClient.security().threatSubmission().fileThreats("{fileThreatsId}")
	.buildRequest()
	.get();

```