---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.tenant_relationships.managed_tenants.credential_user_registrations_summaries.by_credential_user_registrations_summary_id('credentialUserRegistrationsSummary-id').get()


```