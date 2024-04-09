---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TargetDeviceGroup;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TargetDeviceGroup();
$requestBody->setOdataType('#microsoft.graph.targetDeviceGroup');
$requestBody->setDisplayName('Device Group A');

$result = $graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->remoteDesktopSecurityConfiguration()->targetDeviceGroups()->byTargetDeviceGroupId('targetDeviceGroup-id')->patch($requestBody)->wait();

```