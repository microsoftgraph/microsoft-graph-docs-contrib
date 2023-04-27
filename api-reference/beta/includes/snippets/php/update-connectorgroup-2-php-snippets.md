---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new ConnectorGroup();
$requestBody->setName('name-value');

$requestBody->setRegion(new ConnectorGroupRegion('region-value'));



$result = $graphServiceClient->onPremisesPublishingProfilesById('onPremisesPublishingProfile-id')->connectorGroupsById('connectorGroup-id')->patch($requestBody);


```