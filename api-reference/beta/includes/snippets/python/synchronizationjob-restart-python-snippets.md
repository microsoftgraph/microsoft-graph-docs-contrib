---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RestartPostRequestBody()
criteria = SynchronizationJobRestartCriteria()
criteria.resetscope(SynchronizationJobRestartScope.Watermark, Escrows, QuarantineState('synchronizationjobrestartscope.watermark, escrows, quarantinestate'))


request_body.criteria = criteria


request_configuration = RestartRequestBuilder.RestartRequestBuilderPostRequestConfiguration(
headers = {
		'Authorization' : "Bearer <token>",
}

)


await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_job_id('synchronizationJob-id').restart.post(request_body = request_body, request_configuration = request_configuration)


```