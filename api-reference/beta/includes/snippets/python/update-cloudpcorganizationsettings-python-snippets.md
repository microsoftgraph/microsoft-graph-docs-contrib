---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cloud_pc_organization_settings import CloudPcOrganizationSettings
from msgraph.generated.models.cloud_pc_windows_settings import CloudPcWindowsSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloudPcOrganizationSettings(
	odata_type = "#microsoft.graph.cloudPcOrganizationSettings",
	enable_m_e_m_auto_enroll = True,
	os_version = CloudPcOperatingSystem.Windows11,
	user_account_type = CloudPcUserAccountType.StandardUser,
	windows_settings = CloudPcWindowsSettings(
		language = "en-US",
	),
)

result = await graph_client.device_management.virtual_endpoint.organization_settings.patch(request_body)


```