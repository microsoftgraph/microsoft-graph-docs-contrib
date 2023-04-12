---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AdministrativeUnit();
$requestBody->setDisplayName('Seattle District Technical Schools');

$requestBody->setDescription('Seattle district technical schools administration');

$requestBody->setVisibility('HiddenMembership');



$result = $graphServiceClient->directory()->administrativeUnits()->post($requestBody);


```