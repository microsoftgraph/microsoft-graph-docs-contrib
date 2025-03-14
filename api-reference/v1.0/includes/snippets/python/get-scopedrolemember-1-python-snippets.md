---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.directory.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.by_scoped_role_membership_id('scopedRoleMembership-id').get()


```