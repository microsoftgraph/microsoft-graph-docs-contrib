---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.compliance_management_partners.by_compliance_management_partner_id('complianceManagementPartner-id').get()


```