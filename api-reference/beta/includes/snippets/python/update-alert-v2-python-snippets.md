---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Alert()
request_body.assigned_to = 'secAdmin@contoso.onmicrosoft.com'

request_body.classification(AlertClassification.TruePositive('alertclassification.truepositive'))

request_body.determination(AlertDetermination.Malware('alertdetermination.malware'))

request_body.status(AlertStatus.InProgress('alertstatus.inprogress'))




result = await client.security.alert_v2.by_alert_v2_id('alert-id').patch(request_body = request_body)


```