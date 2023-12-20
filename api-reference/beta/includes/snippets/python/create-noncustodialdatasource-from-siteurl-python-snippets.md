---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = NoncustodialDataSource(
	apply_hold_to_source = False,
	data_source = SiteSource(
		odata_type = "microsoft.graph.ediscovery.siteSource",
		site = Site(
			web_url = "https://contoso.sharepoint.com/sites/SecretSite",
		),
	),
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').noncustodial_data_sources.post(request_body)


```