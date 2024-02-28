---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PendingExternalUserProfile();
$requestBody->setJobTitle('Contractor');

$result = $graphServiceClient->directory()->pendingExternalUserProfiles()->byPendingExternalUserProfileId('pendingExternalUserProfile-id')->patch($requestBody)->wait();

```