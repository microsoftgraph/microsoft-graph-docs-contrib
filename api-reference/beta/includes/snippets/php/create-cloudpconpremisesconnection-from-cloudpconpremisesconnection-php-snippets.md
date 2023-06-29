---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CloudPcOnPremisesConnection();
$requestBody->setDisplayName('test-canary-02');

$requestBody->setType(new CloudPcOnPremisesConnectionType('hybridazureadjoin'));

$requestBody->setSubscriptionId('0ac520ee-14c0-480f-b6c9-0a90c585ffff');

$requestBody->setAdDomainName('contoso001.com');

$requestBody->setAdDomainUsername('dcadmin');

$requestBody->setOrganizationalUnit('OU=Domain Controllers, DC=contoso001, DC=com');

$requestBody->setResourceGroupId('/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG');

$requestBody->setVirtualNetworkId('/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET');

$requestBody->setSubnetId('/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c585ad47/resourceGroups/CustomerRG/providers/Microsoft.Network/virtualNetworks/canary01-MyVNET/subnets/canary01-Subnet');



$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->onPremisesConnections()->post($requestBody);


```