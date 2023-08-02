---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcOnPremisesConnection()
request_body.@odata_type = '#microsoft.graph.cloudPcOnPremisesConnection'

request_body.display_name = 'Display Name value'

request_body.subscription_id = '0ac520ee-14c0-480f-b6c9-0a90c585ffff'

request_body.subscription_name = 'Subscription Name value'

request_body.ad_domain_name = 'Active Directory Domain Name value'

request_body.ad_domain_username = 'Active Directory Domain User Name value'

request_body.organizational_unit = 'Organization Unit value'

request_body.resource_group_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG'

request_body.virtual_network_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet'

request_body.subnet_id = '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ffff/resourceGroups/ExampleRG/providers/Microsoft.Network/virtualNetworks/ExampleVNet/subnets/default'




result = await client.device_management.virtual_endpoint.on_premise_connections.by_on_premise_connection_id('cloudPcOnPremisesConnection-id').patch(request_body = request_body)


```