---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditions termsAndConditions = new TermsAndConditions();
termsAndConditions.displayName = "Display Name value";
termsAndConditions.description = "Description value";
termsAndConditions.title = "Title value";
termsAndConditions.bodyText = "Body Text value";
termsAndConditions.acceptanceStatement = "Acceptance Statement value";
termsAndConditions.version = 7;

graphClient.deviceManagement().termsAndConditions()
	.buildRequest()
	.post(termsAndConditions);

```