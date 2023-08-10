---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SubmitTiIndicatorsPostRequestBody()
value_ti_indicator1 = TiIndicator()
value_ti_indicator1.ActivityGroupNames([])

value_ti_indicator1.Confidence = 0

value_ti_indicator1.description = 'This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.'

value_ti_indicator1.expirationDateTime = DateTime('2019-03-01T21:44:03.1668987+00:00')

value_ti_indicator1.external_id = 'Test--8586509942423126760MS164-0'

value_ti_indicator1.filehashtype(FileHashType.Sha256('filehashtype.sha256'))

value_ti_indicator1.file_hash_value = 'b555c45c5b1b01304217e72118d6ca1b14b7013644a078273cea27bbdc1cf9d6'

value_ti_indicator1.KillChain([])

value_ti_indicator1.MalwareFamilyNames([])

value_ti_indicator1.Severity = 0

value_ti_indicator1.Tags([])

value_ti_indicator1.target_product = 'Azure Sentinel'

value_ti_indicator1.threat_type = 'WatchList'

value_ti_indicator1.tlplevel(TlpLevel.Green('tlplevel.green'))


valueArray []= valueTiIndicator1;
value_ti_indicator2 = TiIndicator()
value_ti_indicator2.ActivityGroupNames([])

value_ti_indicator2.Confidence = 0

value_ti_indicator2.description = 'This is a canary indicator for demo purpose. Take no action on any observables set in this indicator.'

value_ti_indicator2.expirationDateTime = DateTime('2019-03-01T21:44:03.1748779+00:00')

value_ti_indicator2.external_id = 'Test--8586509942423126760MS164-1'

value_ti_indicator2.filehashtype(FileHashType.Sha256('filehashtype.sha256'))

value_ti_indicator2.file_hash_value = '1796b433950990b28d6a22456c9d2b58ced1bdfcdf5f16f7e39d6b9bdca4213b'

value_ti_indicator2.KillChain([])

value_ti_indicator2.MalwareFamilyNames([])

value_ti_indicator2.Severity = 0

value_ti_indicator2.Tags([])

value_ti_indicator2.target_product = 'Azure Sentinel'

value_ti_indicator2.threat_type = 'WatchList'

value_ti_indicator2.tlplevel(TlpLevel.Green('tlplevel.green'))


valueArray []= valueTiIndicator2;
request_body.value(valueArray)





result = await client.security.ti_indicators.submit_ti_indicators.post(request_body = request_body)


```