---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").acceptanceStatuses("{termsAndConditionsAcceptanceStatusId}")
	.buildRequest()
	.delete();

```