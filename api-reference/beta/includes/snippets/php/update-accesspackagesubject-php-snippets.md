---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessPackageSubject();
$requestBody->setSubjectLifecycle(new AccessPackageSubjectLifecycle('governed'));

$result = $graphServiceClient->identityGovernance()->entitlementManagement()->subjectsWithObjectId('{objectId}', )->patch($requestBody)->wait();

```