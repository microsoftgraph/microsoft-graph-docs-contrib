---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\MicrosoftGraphTeamsAdministrationUpdateNumber\UpdateNumberPostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UpdateNumberPostRequestBody();
$requestBody->setTelephoneNumber('+12061234567');
$requestBody->setReverseNumberLookupOptions(['skipInternalVoip', 	]);

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationUpdateNumber()->post($requestBody)->wait();

```