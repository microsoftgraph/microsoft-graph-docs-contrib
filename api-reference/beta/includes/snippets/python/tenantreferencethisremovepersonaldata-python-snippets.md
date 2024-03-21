---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.directory.outbound_shared_user_profiles.by_outbound_shared_user_profile_user_id('outboundSharedUserProfile-userId').tenants.by_tenant_reference_tenant_id('tenantReference-tenantId').remove_personal_data.post()


```