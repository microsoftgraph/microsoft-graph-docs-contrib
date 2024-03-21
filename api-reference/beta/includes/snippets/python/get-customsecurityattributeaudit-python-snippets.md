---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.audit_logs.custom_security_attribute_audits.by_custom_security_attribute_audit_id('customSecurityAttributeAudit-id').get()


```