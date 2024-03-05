---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.agreement import Agreement
from msgraph.generated.models.agreement_file_localization import AgreementFileLocalization
from msgraph.generated.models.agreement_file_data import AgreementFileData

graph_client = GraphServiceClient(credentials, scopes)

request_body = Agreement(
	display_name = "Contoso ToU for guest users",
	is_viewing_before_acceptance_required = True,
	files = [
		AgreementFileLocalization(
			file_name = "TOU.pdf",
			language = "en",
			is_default = True,
			file_data = AgreementFileData(
				data = base64.urlsafe_b64decode("SGVsbG8gd29ybGQ=//truncated-binary"),
			),
		),
	],
)

result = await graph_client.identity_governance.terms_of_use.agreements.post(request_body)


```