---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\RefreshPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RefreshPostRequestBody();
$requestBody->setScopeId('/');
$requestBody->setScopeType('DirectoryRole');

$graphServiceClient->identityGovernance()->roleManagementAlerts()->alerts()->refresh()->post($requestBody)->wait();

```