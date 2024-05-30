---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Agreement agreement = new Agreement();
agreement.setDisplayName("All Contoso volunteers - Terms of use");
agreement.setIsViewingBeforeAcceptanceRequired(true);
Agreement result = graphClient.identityGovernance().termsOfUse().agreements().byAgreementId("{agreement-id}").patch(agreement);


```