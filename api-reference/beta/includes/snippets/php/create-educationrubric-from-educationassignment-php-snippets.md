---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceUpdate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/education/me/rubrics/{id}');

$graphServiceClient->education()->classes()->byEducationClassId('educationClass-id')->assignments()->byEducationAssignmentId('educationAssignment-id')->rubric()->ref()->put($requestBody)->wait();

```