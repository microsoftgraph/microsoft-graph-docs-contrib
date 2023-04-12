---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new EducationAssignmentDefaults();
$requestBody->setAddedStudentAction(new EducationAddedStudentAction('assignifopen'));

$requestBody->setAddToCalendarAction(new EducationAddToCalendarOptions('studentsandteamowners'));

$requestBody->setNotificationChannelUrl('https://graph.microsoft.com/beta/teams(\'id\')/channels(\'id\')');



$result = $graphServiceClient->education()->classesById('educationClass-id')->assignmentDefaults()->patch($requestBody);


```