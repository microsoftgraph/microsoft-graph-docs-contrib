---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.source_collection import SourceCollection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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