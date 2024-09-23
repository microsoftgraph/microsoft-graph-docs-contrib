---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_protection_policy import SharePointProtectionPolicy
from msgraph_beta.generated.models.site_protection_unit import SiteProtectionUnit
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointProtectionPolicy(
	display_name = "SharePoint Protection Policy",
	site_protection_units = [
		SiteProtectionUnit(
			site_id = "contoso.sharepoint.com,febad3c2-a7b2-454c-8910-272c7bcf78fc,ba7b70d0-8ba0-4cae-b19a-7cb8c739512f",
		),
		SiteProtectionUnit(
			site_id = "contoso.sharepoint.com/sites/marketing,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
		),
		SiteProtectionUnit(
			site_id = "contoso.sharepoint.com/sites/hr,3bfc861e-9a17-4a27-9562-3d8b26c81bb5,0271110f-634f-4300-a841-3a8a2e851851",
		),
	],
)

result = await graph_client.solutions.backup_restore.share_point_protection_policies.post(request_body)


```