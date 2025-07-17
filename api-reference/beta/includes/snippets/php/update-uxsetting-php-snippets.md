---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\UxSetting;
use Microsoft\Graph\Beta\Generated\Models\NonAdminSetting;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UxSetting();
$requestBody->setRestrictNonAdminAccess(new NonAdminSetting('true'));

$result = $graphServiceClient->admin()->entra()->uxSetting()->patch($requestBody)->wait();

```