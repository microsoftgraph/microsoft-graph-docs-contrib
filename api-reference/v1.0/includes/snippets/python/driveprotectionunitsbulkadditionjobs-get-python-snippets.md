---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.solutions.backup_restore.one_drive_for_business_protection_policies.by_one_drive_for_business_protection_policy_id('oneDriveForBusinessProtectionPolicy-id').drive_protection_units_bulk_addition_jobs.by_drive_protection_units_bulk_addition_job_id('driveProtectionUnitsBulkAdditionJob-id').get()


```