---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UrlThreatSubmissionCollectionPage urlThreats = graphClient.security().threatSubmission().urlThreats()
	.buildRequest()
	.get();

```