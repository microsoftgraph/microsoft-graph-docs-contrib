---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EditionUpgradeConfiguration()
request_body.@odata_type = '#microsoft.graph.editionUpgradeConfiguration'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

request_body.Version = 7

request_body.licensetype(EditionUpgradeLicenseType.LicenseFile('editionupgradelicensetype.licensefile'))

request_body.targetedition(Windows10EditionType.Windows10EnterpriseN('windows10editiontype.windows10enterprisen'))

request_body.license = 'License value'

request_body.product_key = 'Product Key value'




result = await client.device_management.device_configurations.post(request_body = request_body)


```