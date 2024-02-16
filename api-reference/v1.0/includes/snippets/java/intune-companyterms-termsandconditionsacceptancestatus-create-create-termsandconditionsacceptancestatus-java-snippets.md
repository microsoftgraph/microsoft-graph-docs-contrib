---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TermsAndConditionsAcceptanceStatus termsAndConditionsAcceptanceStatus = new TermsAndConditionsAcceptanceStatus();
termsAndConditionsAcceptanceStatus.setOdataType("#microsoft.graph.termsAndConditionsAcceptanceStatus");
termsAndConditionsAcceptanceStatus.setUserDisplayName("User Display Name value");
termsAndConditionsAcceptanceStatus.setAcceptedVersion(15);
OffsetDateTime acceptedDateTime = OffsetDateTime.parse("2016-12-31T23:57:43.6165506-08:00");
termsAndConditionsAcceptanceStatus.setAcceptedDateTime(acceptedDateTime);
termsAndConditionsAcceptanceStatus.setUserPrincipalName("User Principal Name value");
TermsAndConditionsAcceptanceStatus result = graphClient.deviceManagement().termsAndConditions().byTermsAndConditionsId("{termsAndConditions-id}").acceptanceStatuses().post(termsAndConditionsAcceptanceStatus);


```