---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsCollectionPage termsAndConditions = graphClient.deviceManagement().termsAndConditions()
	.buildRequest()
	.get();

```