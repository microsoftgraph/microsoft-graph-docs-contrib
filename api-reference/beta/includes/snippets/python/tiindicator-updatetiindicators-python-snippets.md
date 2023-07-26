---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UpdateTiIndicatorsPostRequestBody()
value_ti_indicator1 = TiIndicator()
value_ti_indicator1.id = 'c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4'

value_ti_indicator1.additional_information = 'mytest'


valueArray []= valueTiIndicator1;
value_ti_indicator2 = TiIndicator()
value_ti_indicator2.id = 'e58c072b-c9bb-a5c4-34ce-eb69af44fb1e'

value_ti_indicator2.additional_information = 'test again'


valueArray []= valueTiIndicator2;
request_body.value(valueArray)





result = await client.security.ti_indicators.update_ti_indicators.post(request_body = request_body)


```