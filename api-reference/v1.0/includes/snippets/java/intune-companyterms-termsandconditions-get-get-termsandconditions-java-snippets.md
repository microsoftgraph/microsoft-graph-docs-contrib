---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditions termsAndConditions = graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}")
	.buildRequest()
	.get();

```