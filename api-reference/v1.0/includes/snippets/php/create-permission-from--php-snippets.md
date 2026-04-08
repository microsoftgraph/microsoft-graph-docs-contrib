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
$grantedToIdentitiesIdentitySet1 = new IdentitySet();
$grantedToIdentitiesIdentitySet1Application = new Identity();
$grantedToIdentitiesIdentitySet1Application->setId('89ea5c94-7736-4e25-95ad-3fa95f62b66e');
$grantedToIdentitiesIdentitySet1Application->setDisplayName('Contoso Time Manager App');
$grantedToIdentitiesIdentitySet1->setApplication($grantedToIdentitiesIdentitySet1Application);
$grantedToIdentitiesArray []= $grantedToIdentitiesIdentitySet1;
$requestBody->setGrantedToIdentities($grantedToIdentitiesArray);


$result = $graphServiceClient->sites()->bySiteId('site-id')->permissions()->post($requestBody)->wait();

```