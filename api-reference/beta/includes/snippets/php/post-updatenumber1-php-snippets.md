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
$requestBody->setLocationId('93cb8a70-b4af-41df-9928-d07607e21776');

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationUpdateNumber()->post($requestBody)->wait();

```