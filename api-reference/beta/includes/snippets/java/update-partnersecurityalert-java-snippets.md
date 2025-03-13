---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.partner.security.PartnerSecurityAlert partnerSecurityAlert = new com.microsoft.graph.beta.models.partner.security.PartnerSecurityAlert();
partnerSecurityAlert.setStatus(com.microsoft.graph.beta.models.partner.security.SecurityAlertStatus.Resolved);
partnerSecurityAlert.setResolvedReason(com.microsoft.graph.beta.models.partner.security.SecurityAlertResolvedReason.Fraud);
com.microsoft.graph.models.partner.security.PartnerSecurityAlert result = graphClient.security().partner().securityAlerts().byPartnerSecurityAlertId("{partnerSecurityAlert-id}").patch(partnerSecurityAlert);


```