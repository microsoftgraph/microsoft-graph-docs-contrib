---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Permission;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Permission();
$requestBody->setRoles(['write', 	]);
$grantedToIdentitySet1 = new IdentitySet();
$grantedToIdentitySet1Application = new Application();
$grantedToIdentitySet1Application->setId('89ea5c94-7736-4e25-95ad-3fa95f62b66e');
$grantedToIdentitySet1->setApplication($grantedToIdentitySet1Application);
$grantedToArray []= $grantedToIdentitySet1;
$requestBody->setGrantedTo($grantedToArray);


$result = $graphServiceClient->sites()->bySiteId('site-id')->permissions()->post($requestBody)->wait();

```