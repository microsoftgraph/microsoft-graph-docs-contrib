---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.edition_upgrade_configuration import EditionUpgradeConfiguration
from msgraph.generated.models.edition_upgrade_license_type import EditionUpgradeLicenseType
from msgraph.generated.models.windows10_edition_type import Windows10EditionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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