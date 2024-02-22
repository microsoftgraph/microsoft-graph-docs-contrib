---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.edition_upgrade_configuration import EditionUpgradeConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = EditionUpgradeConfiguration(
	odata_type = "#microsoft.graph.editionUpgradeConfiguration",
	description = "Description value",
	display_name = "Display Name value",
	version = 7,
	license_type = EditionUpgradeLicenseType.LicenseFile,
	target_edition = Windows10EditionType.Windows10EnterpriseN,
	license = "License value",
	product_key = "Product Key value",
)

result = await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').patch(request_body)


```