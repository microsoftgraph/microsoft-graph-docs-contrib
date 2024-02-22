---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectorGroup();
$requestBody->setName('name-value');
$requestBody->setIsDefault(false);

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->connectorGroups()->post($requestBody)->wait();

```