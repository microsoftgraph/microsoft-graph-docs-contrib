---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = Alert(
	assigned_to = "secAdmin@contoso.onmicrosoft.com",
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.Malware,
	status = AlertStatus.InProgress,
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').patch(request_body)


```