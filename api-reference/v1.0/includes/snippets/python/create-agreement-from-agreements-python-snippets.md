---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Agreement()
request_body.display_name = 'Contoso ToU for guest users'

request_body.is_viewing_before_acceptance_required = True

files_agreement_file_localization1 = AgreementFileLocalization()
files_agreement_file_localization1.file_name = 'TOU.pdf'

files_agreement_file_localization1.language = 'en'

files_agreement_file_localization1.is_default = True

files_agreement_file_localization1file_data = AgreementFileData()
files_agreement_file_localization1file_data.Data(base64_decode('SGVsbG8gd29ybGQ=//truncated-binary'))


files_agreement_file_localization1.file_data = files_agreement_file_localization1file_data

filesArray []= filesAgreementFileLocalization1;
request_body.files(filesArray)





result = await client.identity_governance.term_of_use.agreements.post(request_body = request_body)


```