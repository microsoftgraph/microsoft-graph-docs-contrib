---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAcceptanceStatusCollectionPage acceptanceStatuses = graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").acceptanceStatuses()
	.buildRequest()
	.get();

```