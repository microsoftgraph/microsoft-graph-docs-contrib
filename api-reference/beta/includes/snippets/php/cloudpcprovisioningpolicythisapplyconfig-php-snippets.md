---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\ProvisioningPolicies\ApplyConfig\ApplyConfigPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcPolicySettingType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ApplyConfigPostRequestBody();
$requestBody->setCloudPcIds(['52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4', 'ff117b6c-e3e6-41be-9cae-eb6743249a30', 	]);
$requestBody->setPolicySettings(new CloudPcPolicySettingType('region'));

$graphServiceClient->deviceManagement()->virtualEndpoint()->provisioningPolicies()->applyConfig()->post($requestBody)->wait();

```