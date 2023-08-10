---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ValidateCredentialsPostRequestBody()
credentials_synchronization_secret_key_string_value_pair1 = SynchronizationSecretKeyStringValuePair()
credentials_synchronization_secret_key_string_value_pair1.key(SynchronizationSecret.UserName('synchronizationsecret.username'))

credentials_synchronization_secret_key_string_value_pair1.value = 'user@domain.com'


credentialsArray []= credentialsSynchronizationSecretKeyStringValuePair1;
credentials_synchronization_secret_key_string_value_pair2 = SynchronizationSecretKeyStringValuePair()
credentials_synchronization_secret_key_string_value_pair2.key(SynchronizationSecret.Password('synchronizationsecret.password'))

credentials_synchronization_secret_key_string_value_pair2.value = 'password-value'


credentialsArray []= credentialsSynchronizationSecretKeyStringValuePair2;
request_body.credentials(credentialsArray)





await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_job_id('synchronizationJob-id').validate_credentials.post(request_body = request_body)


```