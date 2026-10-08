---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Admin\Teams\TelephoneNumberManagement\NumberAssignments\MicrosoftGraphTeamsAdministrationAssignNumber\AssignNumberPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\TeamsAdministration\NumberType;
use Microsoft\Graph\Beta\Generated\Models\TeamsAdministration\AssignmentCategory;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AssignNumberPostRequestBody();
$requestBody->setTelephoneNumber('12061234567');
$requestBody->setAssignmentTargetId('94ec379d-30a2-4cdb-a377-75e42f7a61e5');
$requestBody->setNumberType(new NumberType('directRouting'));
$requestBody->setAssignmentCategory(new AssignmentCategory('primary'));

$graphServiceClient->admin()->teams()->telephoneNumberManagement()->numberAssignments()->microsoftGraphTeamsAdministrationAssignNumber()->post($requestBody)->wait();

```