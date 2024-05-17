---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PendingExternalUserProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PendingExternalUserProfile();
$requestBody->setPhoneNumber('+15555555555');
$requestBody->setDisplayName('Bob Henry');

$result = $graphServiceClient->directory()->pendingExternalUserProfiles()->post($requestBody)->wait();

```