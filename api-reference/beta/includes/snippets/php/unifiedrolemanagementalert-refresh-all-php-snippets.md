---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RefreshPostRequestBody();
$requestBody->setScopeId('/');
$requestBody->setScopeType('DirectoryRole');

$graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->refresh()->post($requestBody)->wait();

```