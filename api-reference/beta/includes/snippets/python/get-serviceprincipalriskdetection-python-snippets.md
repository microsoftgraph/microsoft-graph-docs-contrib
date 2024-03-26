---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_protection.service_principal_risk_detections.by_service_principal_risk_detection_id('servicePrincipalRiskDetection-id').get()


```