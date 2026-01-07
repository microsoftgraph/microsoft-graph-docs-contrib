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
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 recipients1 = new ();
recipients1.setRole("custom");
LinkedList<Object> customRecipients = new LinkedList<Object>();
 property = new ();
property.setEmail("amala@contoso.com");
customRecipients.add(property);
 property1 = new ();
property1.setEmail("conrad@contoso.com");
customRecipients.add(property1);
 property2 = new ();
property2.setEmail("lothar@contoso.com");
customRecipients.add(property2);
recipients1.setCustomRecipients(customRecipients);
additionalData.put("recipients", recipients1);
recipients.setAdditionalData(additionalData);
emailNotificationsSetting.setRecipients(recipients);
EmailNotificationsSetting result = graphClient.solutions().backupRestore().emailNotificationsSetting().patch(emailNotificationsSetting);


```