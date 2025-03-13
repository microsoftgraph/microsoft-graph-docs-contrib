---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\LearningProvider;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LearningProvider();
$requestBody->setDisplayName('Microsoft');
$requestBody->setSquareLogoWebUrlForDarkTheme('https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png');
$requestBody->setLongLogoWebUrlForDarkTheme('https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png');
$requestBody->setSquareLogoWebUrlForLightTheme('https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png');
$requestBody->setLongLogoWebUrlForLightTheme('https://support.content.office.net/en-us/media/4c531d12-4c13-4782-a6e4-4b8f991801a3.png');
$requestBody->setLoginWebUrl('https://www.linkedin.com/learning-login/teams');
$requestBody->setIsCourseActivitySyncEnabled(true);

$result = $graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->patch($requestBody)->wait();

```