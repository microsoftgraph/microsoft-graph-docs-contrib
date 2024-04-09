---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\PendingExternalUserProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PendingExternalUserProfile();
$requestBody->setJobTitle('Contractor');

$result = $graphServiceClient->directory()->pendingExternalUserProfiles()->byPendingExternalUserProfileId('pendingExternalUserProfile-id')->patch($requestBody)->wait();

```