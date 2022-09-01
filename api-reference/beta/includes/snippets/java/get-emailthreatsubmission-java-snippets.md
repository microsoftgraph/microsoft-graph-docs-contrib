---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EmailThreatSubmission emailThreatSubmission = graphClient.security().threatSubmission().emailThreats("{emailThreatsId}")
	.buildRequest()
	.get();

```