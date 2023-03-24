---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmissionCollectionPage emailThreats = graphClient.security().threatSubmission().emailThreats()
	.buildRequest()
	.get();

```