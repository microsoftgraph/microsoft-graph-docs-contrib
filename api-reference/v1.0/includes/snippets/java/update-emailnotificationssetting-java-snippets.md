---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EmailNotificationsSetting emailNotificationsSetting = new EmailNotificationsSetting();
emailNotificationsSetting.setIsEnabled(true);
emailNotificationsSetting.setAdditionalEvents(EnumSet.of(NotificationEventsType.RestoreAndPolicyUpdates));
NotificationRecipients recipients = new NotificationRecipients();
recipients.setRole(EnumSet.of(NotificationRecipientsType.Custom));
LinkedList<EmailIdentity> customRecipients = new LinkedList<EmailIdentity>();
EmailIdentity emailIdentity = new EmailIdentity();
emailIdentity.setEmail("amala@contoso.com");
customRecipients.add(emailIdentity);
EmailIdentity emailIdentity1 = new EmailIdentity();
emailIdentity1.setEmail("conrad@contoso.com");
customRecipients.add(emailIdentity1);
EmailIdentity emailIdentity2 = new EmailIdentity();
emailIdentity2.setEmail("lothar@contoso.com");
customRecipients.add(emailIdentity2);
recipients.setCustomRecipients(customRecipients);
emailNotificationsSetting.setRecipients(recipients);
EmailNotificationsSetting result = graphClient.solutions().backupRestore().emailNotificationsSetting().patch(emailNotificationsSetting);


```