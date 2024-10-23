---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.solutions.backup_restore.exchange_protection_policies.by_exchange_protection_policy_id('exchangeProtectionPolicy-id').mailbox_inclusion_rules.by_mailbox_protection_rule_id('mailboxProtectionRule-id').get()


```