---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxProtectionUnitsBulkAdditionJob result = graphClient.solutions().backupRestore().exchangeProtectionPolicies().byExchangeProtectionPolicyId("{exchangeProtectionPolicy-id}").mailboxProtectionUnitsBulkAdditionJobs().byMailboxProtectionUnitsBulkAdditionJobId("{mailboxProtectionUnitsBulkAdditionJob-id}").get();


```