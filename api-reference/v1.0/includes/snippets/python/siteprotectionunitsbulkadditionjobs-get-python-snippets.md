---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.solutions.backup_restore.share_point_protection_policies.by_share_point_protection_policy_id('sharePointProtectionPolicy-id').site_protection_units_bulk_addition_jobs.by_site_protection_units_bulk_addition_job_id('siteProtectionUnitsBulkAdditionJob-id').get()


```