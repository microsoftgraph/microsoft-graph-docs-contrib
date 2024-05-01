---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\LearningContent;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new LearningContent();
$requestBody->setTitle('Manage classes, resources, assessment, and planning in Microsoft Teams with Beedle');
$requestBody->setDescription('A module to guide users through the various teaching and learning enhancements that Beedle provides within Microsoft Teams, with many examples of everyday application.');
$requestBody->setContentWebUrl('https://learn.microsoft.com/learn/modules/manage-classes-resources-assessment-planning-beedle/');
$requestBody->setSourceName('MsLearn');
$requestBody->setThumbnailWebUrl('https://syndetics.com/index.aspx?isbn=9783319672175/LC.GIF');
$requestBody->setLanguageTag('en-us');
$requestBody->setNumberOfPages(9);
$requestBody->setDuration(new \DateInterval('PT20M'));
$requestBody->setFormat('Book');
$requestBody->setLevel(new Level('beginner'));
$requestBody->setCreatedDateTime(new \DateTime('2018-01-01T00:00:00'));
$requestBody->setLastModifiedDateTime(new \DateTime('2021-04-01T04:26:06.1995367Z'));
$requestBody->setAdditionalTags(['Create private or public teams', 'Add members to teams', 	]);
$requestBody->setSkillTags(['Create teams', 'Teams channels', 'Teams members', 	]);
$requestBody->setIsActive(true);
$requestBody->setIsPremium(false);
$requestBody->setIsSearchable(true);
$additionalData = [
	'contributor' => 'Scott Simpson',
];
$requestBody->setAdditionalData($additionalData);

$result = $graphServiceClient->employeeExperience()->learningProviders()->byLearningProviderId('learningProvider-id')->learningContentsWithExternalId('{externalId}', )->patch($requestBody)->wait();

```