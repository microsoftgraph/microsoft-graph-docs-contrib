---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

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

$requestBody->setCreatedDateTime(new DateTime('2018-01-01T00:00:00Z'));

$requestBody->setLastModifiedDateTime(new DateTime('2021-04-01T04:26:06.1995367Z'));

$requestBody->setContributors(['Lina Wagner', 'Lisa Richter', ]);

$requestBody->setAdditionalTags(['Create private or public teams', 'Add members to teams', ]);

$requestBody->setSkillTags(['Create teams', 'Teams channels', 'Teams members', ]);

$requestBody->setIsActive(true);

$requestBody->setIsPremium(false);

$requestBody->setIsSearchable(true);



$result = $graphServiceClient->employeeExperience()->learningProvidersById('learningProvider-id')->learningContentsById('learningContent-id')->patch($requestBody);


```