---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.sharepoint_settings import SharepointSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = SharepointSettings(
	deleted_user_personal_site_retention_period_in_days = 365,
	excluded_file_extensions_for_sync_app = [
		".mp3",
	],
	image_tagging_option = ImageTaggingChoice.Enhanced,
	is_legacy_auth_protocols_enabled = True,
	is_sites_storage_limit_automatic = False,
	is_sync_button_hidden_on_personal_site = False,
	is_unmanaged_sync_app_for_tenant_restricted = False,
	personal_site_default_storage_limit_in_m_b = 120000,
)

result = await graph_client.admin.sharepoint.settings.patch(request_body)


```