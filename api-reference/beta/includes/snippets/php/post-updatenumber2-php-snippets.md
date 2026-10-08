---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\MicrosoftGraphTeamsAdministrationUpdateNumber\UpdateNumberPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateNumberPostRequestBody();
$requestBody->setTelephoneNumber('+12061234567');
$requestBody->setNetworkSiteId('fff21455-0f84-4a6b-babd-0a9b46971a62');

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationUpdateNumber()->post($requestBody)->wait();

```