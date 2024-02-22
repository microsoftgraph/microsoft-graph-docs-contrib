---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectorGroup();
$requestBody->setName('name-value');
$requestBody->setRegion(new ConnectorGroupRegion('region-value'));

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->connectorGroups()->byConnectorGroupId('connectorGroup-id')->patch($requestBody)->wait();

```