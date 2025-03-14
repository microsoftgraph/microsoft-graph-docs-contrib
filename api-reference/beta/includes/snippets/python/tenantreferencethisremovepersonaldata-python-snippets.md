---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

await graph_client.directory.outbound_shared_user_profiles.by_outbound_shared_user_profile_user_id('outboundSharedUserProfile-userId').tenants.by_tenant_reference_tenant_id('tenantReference-tenantId').remove_personal_data.post()


```