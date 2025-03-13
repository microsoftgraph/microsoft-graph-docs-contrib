---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PendingExternalUserProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PendingExternalUserProfile();
$requestBody->setPhoneNumber('+15555555555');
$requestBody->setDisplayName('Bob Henry');

$result = $graphServiceClient->directory()->pendingExternalUserProfiles()->post($requestBody)->wait();

```