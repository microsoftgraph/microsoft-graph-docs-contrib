---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.solutions.backup_restore.exchange_protection_policies.by_exchange_protection_policy_id('exchangeProtectionPolicy-id').mailbox_inclusion_rules.by_mailbox_protection_rule_id('mailboxProtectionRule-id').get()


```