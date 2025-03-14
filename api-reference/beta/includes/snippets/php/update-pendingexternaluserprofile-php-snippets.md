---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\PendingExternalUserProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PendingExternalUserProfile();
$requestBody->setJobTitle('Contractor');

$result = $graphServiceClient->directory()->pendingExternalUserProfiles()->byPendingExternalUserProfileId('pendingExternalUserProfile-id')->patch($requestBody)->wait();

```