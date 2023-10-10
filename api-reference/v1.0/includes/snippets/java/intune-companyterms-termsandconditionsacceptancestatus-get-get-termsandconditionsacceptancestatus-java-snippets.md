---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAcceptanceStatus termsAndConditionsAcceptanceStatus = graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").acceptanceStatuses("{termsAndConditionsAcceptanceStatusId}")
	.buildRequest()
	.get();

```