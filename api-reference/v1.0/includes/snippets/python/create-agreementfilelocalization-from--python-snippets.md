---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AgreementFileLocalization()
request_body.file_name = 'Contoso ToU for guest users (French)'

request_body.language = 'fr-FR'

request_body.is_default = False

request_body.is_major_version = False

request_body.display_name = 'Contoso ToU for guest users (French)'

file_data = AgreementFileData()
file_data.Data(base64_decode('base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data'))


request_body.file_data = file_data



result = await client.identity_governance.term_of_use.agreements.by_agreement_id('agreement-id').files.post(request_body = request_body)


```