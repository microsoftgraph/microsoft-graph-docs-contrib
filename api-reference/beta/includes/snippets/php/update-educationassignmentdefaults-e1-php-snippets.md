---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\EducationAssignmentDefaults;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new EducationAssignmentDefaults();
$requestBody->setAddedStudentAction(new EducationAddedStudentAction('assignIfOpen'));
$requestBody->setAddToCalendarAction(new EducationAddToCalendarOptions('studentsAndTeamOwners'));
$requestBody->setNotificationChannelUrl('https://graph.microsoft.com/beta/teams(\'id\')/channels(\'id\')');

$result = $graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignmentDefaults()->patch($requestBody)->wait();

```