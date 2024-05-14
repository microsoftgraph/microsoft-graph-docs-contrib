---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalUserProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUserProfile();
$requestBody->setJobTitle('Contractor');

$result = $graphServiceClient->directory()->externalUserProfiles()->byExternalUserProfileId('externalUserProfile-id')->patch($requestBody)->wait();

```