---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcOnPremisesConnection()
request_body.display_name = 'test-canary-02'

request_body.type(CloudPcOnPremisesConnectionType.HybridAzureADJoin('cloudpconpremisesconnectiontype.hybridazureadjoin'))

request_body.subscription_id = '0ac520ee-14c0-480f-b6c9-0a90c585ffff'

request_body.ad_domain_name = 'contoso001.com'

request_body.ad_domain_username = 'dcadmin'

request_body.organizational_unit = 'OU=Domain Controllers, DC=contoso001, DC=com'

request_body.resource_group_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG'

request_body.virtual_network_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET'

request_body.subnet_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet'




result = await client.device_management.virtual_endpoint.on_premise_connections.post(request_body = request_body)


```