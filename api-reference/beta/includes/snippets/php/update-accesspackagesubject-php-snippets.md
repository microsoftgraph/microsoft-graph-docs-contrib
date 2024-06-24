---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageSubject;
use Microsoft\Graph\Beta\Generated\Models\AccessPackageSubjectLifecycle;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageSubject();
$requestBody->setSubjectLifecycle(new AccessPackageSubjectLifecycle('governed'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->subjectsWithObjectId('{objectId}', )->patch($requestBody)->wait();

```