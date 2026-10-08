---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\MicrosoftGraphTeamsAdministrationAssignNumber\AssignNumberPostRequestBody;
use Microsoft\Graph\Generated\Models\TeamsAdministration\NumberType;
use Microsoft\Graph\Generated\Models\TeamsAdministration\AssignmentCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignNumberPostRequestBody();
$requestBody->setTelephoneNumber('12061234567');
$requestBody->setAssignmentTargetId('94ec379d-30a2-4cdb-a377-75e42f7a61e5');
$requestBody->setNumberType(new NumberType('directRouting'));
$requestBody->setAssignmentCategory(new AssignmentCategory('primary'));

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationAssignNumber()->post($requestBody)->wait();

```