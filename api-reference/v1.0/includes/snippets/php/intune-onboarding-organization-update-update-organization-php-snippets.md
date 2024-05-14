---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Organization;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Organization();
$requestBody->setOdataType('#microsoft.graph.organization');
$requestBody->setMobileDeviceManagementAuthority(new MdmAuthority('intune'));

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->patch($requestBody)->wait();

```