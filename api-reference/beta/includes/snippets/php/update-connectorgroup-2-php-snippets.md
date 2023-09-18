---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ConnectorGroup();
$requestBody->setName('name-value');
$requestBody->setRegion(new ConnectorGroupRegion('region-value'));

$result = $graphServiceClient->onPremisesPublishingProfiles()->byOnPremisesPublishingProfileId('onPremisesPublishingProfile-id')->connectorGroups()->byConnectorGroupId('connectorGroup-id')->patch($requestBody)->wait();

```