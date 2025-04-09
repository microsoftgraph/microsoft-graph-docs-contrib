---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agreement_file_localization import AgreementFileLocalization
from msgraph_beta.generated.models.agreement_file_data import AgreementFileData
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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