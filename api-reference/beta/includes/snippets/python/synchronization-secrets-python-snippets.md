---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SynchronizationSecretKeyStringValuePair()
additional_data = [
'value' => value1 = ()
		value1.key = 'BaseAddress'

		value1.value = 'user@domain.com'


valueArray []= value1;
value2 = ()
		value2.key = 'SecretToken'

		value2.value = 'password-value'


valueArray []= value2;
value3 = ()
		value3.key = 'SyncNotificationSettings'

		value3.value = '{\"Enabled\":false,\"DeleteThresholdEnabled\":false}'


valueArray []= value3;
value4 = ()
		value4.key = 'SyncAll'

		value4.value = 'false'


valueArray []= value4;
request_body.value(valueArray)


];
request_body.additional_data(additional_data)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.secrets.put(request_body = request_body)


```