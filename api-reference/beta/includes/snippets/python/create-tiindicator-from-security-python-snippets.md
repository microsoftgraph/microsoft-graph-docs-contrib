---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TiIndicator()
request_body.action(TiAction.Alert('tiaction.alert'))

request_body.ActivityGroupNames([])

request_body.Confidence = 0

request_body.description = 'This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.'

request_body.expirationDateTime = DateTime('2019-03-01T21:43:37.5031462+00:00')

request_body.external_id = 'Test--8586509942679764298MS501'

request_body.filehashtype(FileHashType.Sha256('filehashtype.sha256'))

request_body.file_hash_value = 'aa64428647b57bf51524d1756b2ed746e5a3f31b67cf7fe5b5d8a9daf07ca313'

request_body.KillChain([])

request_body.MalwareFamilyNames([])

request_body.Severity = 0

request_body.Tags([])

request_body.target_product = 'Azure Sentinel'

request_body.threat_type = 'WatchList'

request_body.tlplevel(TlpLevel.Green('tlplevel.green'))




result = await client.security.ti_indicators.post(request_body = request_body)


```