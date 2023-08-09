---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Incident()
request_body.classification(AlertClassification.TruePositive('alertclassification.truepositive'))

request_body.determination(AlertDetermination.MultiStagedAttack('alertdetermination.multistagedattack'))

request_body.CustomTags(['Demo', ])




result = await client.security.incidents.by_incident_id('incident-id').patch(request_body = request_body)


```