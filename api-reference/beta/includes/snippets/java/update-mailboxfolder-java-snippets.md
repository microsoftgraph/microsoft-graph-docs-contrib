---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxFolder mailboxFolder = new MailboxFolder();
mailboxFolder.setDisplayName("Announcements");
LinkedList<SingleValueLegacyExtendedProperty> singleValueExtendedProperties = new LinkedList<SingleValueLegacyExtendedProperty>();
SingleValueLegacyExtendedProperty singleValueLegacyExtendedProperty = new SingleValueLegacyExtendedProperty();
singleValueLegacyExtendedProperty.setId("String 0x3001");
singleValueLegacyExtendedProperty.setValue("Announcements");
singleValueExtendedProperties.add(singleValueLegacyExtendedProperty);
mailboxFolder.setSingleValueExtendedProperties(singleValueExtendedProperties);
MailboxFolder result = graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").folders().byMailboxFolderId("{mailboxFolder-id}").patch(mailboxFolder);


```