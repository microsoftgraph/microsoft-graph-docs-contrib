---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backup_restore.exchange_protection_policies.item.mailbox_inclusion_rules.mailbox_inclusion_rules_request_builder import MailboxInclusionRulesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <Access-Token>")


result = await graph_client.solutions.backup_restore.exchange_protection_policies.by_exchange_protection_policy_id('exchangeProtectionPolicy-id').mailbox_inclusion_rules.get(request_configuration = request_configuration)


```