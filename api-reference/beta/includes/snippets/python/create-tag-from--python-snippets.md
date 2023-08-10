---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Tag()
request_body.display_name = 'Privileged'

request_body.description = 'The document is privileged'

additional_data = [
'parent@odata_bind' => 'https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3', 
];
request_body.additional_data(additional_data)





result = await client.compliance.ediscovery.cases.by_case_id('case-id').tags.post(request_body = request_body)


```