---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Organization organization = new Organization();
LinkedList<String> marketingNotificationEmails = new LinkedList<String>();
marketingNotificationEmails.add("marketing@contoso.com");
organization.setMarketingNotificationEmails(marketingNotificationEmails);
PrivacyProfile privacyProfile = new PrivacyProfile();
privacyProfile.setContactEmail("alice@contoso.com");
privacyProfile.setStatementUrl("https://contoso.com/privacyStatement");
organization.setPrivacyProfile(privacyProfile);
LinkedList<String> securityComplianceNotificationMails = new LinkedList<String>();
securityComplianceNotificationMails.add("security@contoso.com");
organization.setSecurityComplianceNotificationMails(securityComplianceNotificationMails);
LinkedList<String> securityComplianceNotificationPhones = new LinkedList<String>();
securityComplianceNotificationPhones.add("(123) 456-7890");
organization.setSecurityComplianceNotificationPhones(securityComplianceNotificationPhones);
LinkedList<String> technicalNotificationMails = new LinkedList<String>();
technicalNotificationMails.add("tech@contoso.com");
organization.setTechnicalNotificationMails(technicalNotificationMails);
Organization result = graphClient.organization().byOrganizationId("{organization-id}").patch(organization);


```