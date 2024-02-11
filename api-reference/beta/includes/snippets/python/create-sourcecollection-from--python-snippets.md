---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.source_collection import SourceCollection

graph_client = GraphServiceClient(credentials, scopes)

request_body = SourceCollection(
	display_name = "Quarterly Financials search",
	content_query = "subject:'Quarterly Financials'",
	additional_data = {
			"custodian_sources@odata_bind" : [
				"https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735",
			],
	}
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.post(request_body)


```