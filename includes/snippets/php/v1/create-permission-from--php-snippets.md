---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Permission;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$requestBody->setRoles(['write', 	]);
$grantedTo = new IdentitySet();
$grantedToApplication = new Identity();
$grantedToApplication->setId('89ea5c94-7736-4e25-95ad-3fa95f62b66e');
$grantedTo->setApplication($grantedToApplication);
$requestBody->setGrantedTo($grantedTo);

$result = $graphServiceClient->sites()->bySiteId('site-id')->permissions()->post($requestBody)->wait();

```