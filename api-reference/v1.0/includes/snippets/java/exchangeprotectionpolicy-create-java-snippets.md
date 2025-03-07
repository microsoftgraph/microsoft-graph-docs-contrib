---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExchangeProtectionPolicy exchangeProtectionPolicy = new ExchangeProtectionPolicy();
exchangeProtectionPolicy.setDisplayName("Exchange Protection Policy");
LinkedList<MailboxProtectionUnit> mailboxProtectionUnits = new LinkedList<MailboxProtectionUnit>();
MailboxProtectionUnit mailboxProtectionUnit = new MailboxProtectionUnit();
mailboxProtectionUnit.setDirectoryObjectId("cdd3a849-dcaf-4a85-af82-7e39fc14019a");
mailboxProtectionUnits.add(mailboxProtectionUnit);
MailboxProtectionUnit mailboxProtectionUnit1 = new MailboxProtectionUnit();
mailboxProtectionUnit1.setDirectoryObjectId("9bc069da-b746-41a4-89ab-26125c6373c7");
mailboxProtectionUnits.add(mailboxProtectionUnit1);
MailboxProtectionUnit mailboxProtectionUnit2 = new MailboxProtectionUnit();
mailboxProtectionUnit2.setDirectoryObjectId("b218eb4a-ea72-42bd-8f0b-d0bbf794bec7");
mailboxProtectionUnits.add(mailboxProtectionUnit2);
exchangeProtectionPolicy.setMailboxProtectionUnits(mailboxProtectionUnits);
ExchangeProtectionPolicy result = graphClient.solutions().backupRestore().exchangeProtectionPolicies().post(exchangeProtectionPolicy);


```