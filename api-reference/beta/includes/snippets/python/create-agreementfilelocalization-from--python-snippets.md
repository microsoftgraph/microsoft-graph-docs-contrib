---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AgreementFileLocalization(
	file_name = "Contoso ToU for guest users (French)",
	language = "fr-FR",
	is_default = False,
	is_major_version = False,
	display_name = "Contoso ToU for guest users (French)",
	file_data = AgreementFileData(
		data = base64.urlsafe_b64decode("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data"),
	),
)

result = await graph_client.identity_governance.terms_of_use.agreements.by_agreement_id('agreement-id').files.post(request_body)


```