---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectorGroup();
$requestBody->setName('IWA Demo Connector Group');

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->connectorGroups()->post($requestBody)->wait();

```