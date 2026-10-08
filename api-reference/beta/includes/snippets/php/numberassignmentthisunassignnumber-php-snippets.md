---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\MicrosoftGraphTeamsAdministrationUnassignNumber\UnassignNumberPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TeamsAdministration\NumberType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new UnassignNumberPostRequestBody();
$requestBody->setTelephoneNumber('12061234567');
$requestBody->setNumberType(new NumberType('directRouting'));

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationUnassignNumber()->post($requestBody)->wait();

```