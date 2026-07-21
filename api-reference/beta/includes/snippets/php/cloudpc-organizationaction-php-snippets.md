---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\DeviceManagement\VirtualEndpoint\OrganizationAction\OrganizationActionPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\CloudPcOrganizationActionType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationActionPostRequestBody();
$requestBody->setActionType(new CloudPcOrganizationActionType('activate'));

$result = $graphServiceClient->deviceManagement()->virtualEndpoint()->organizationAction()->post($requestBody)->wait();

```