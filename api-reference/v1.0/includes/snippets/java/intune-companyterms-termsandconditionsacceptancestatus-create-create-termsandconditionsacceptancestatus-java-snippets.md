---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TermsAndConditionsAcceptanceStatus termsAndConditionsAcceptanceStatus = new TermsAndConditionsAcceptanceStatus();
termsAndConditionsAcceptanceStatus.userDisplayName = "User Display Name value";
termsAndConditionsAcceptanceStatus.acceptedVersion = 15;
termsAndConditionsAcceptanceStatus.acceptedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:43.6165506+00:00");
termsAndConditionsAcceptanceStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().termsAndConditions("{termsAndConditionsId}").acceptanceStatuses()
	.buildRequest()
	.post(termsAndConditionsAcceptanceStatus);

```