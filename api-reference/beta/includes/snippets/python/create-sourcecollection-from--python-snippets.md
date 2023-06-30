---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SourceCollection()
request_body.display_name = 'Quarterly Financials search'

request_body.content_query = 'subject:\'Quarterly Financials\''

additional_data = [
'custodian_sources@odata_bind' => ['https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735', ],
];
request_body.additional_data(additional_data)





result = await client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.post(request_body = request_body)


```