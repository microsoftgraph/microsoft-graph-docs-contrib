---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClonePostRequestBody();
$requestBody->setDisplayName('Library Assist');

$requestBody->setDescription('Self help community for library');

$requestBody->setMailNickname('libassist');

$requestBody->setPartsToClone(new ClonableTeamParts('apps,tabs,settings,channels,members'));

$requestBody->setVisibility(new TeamVisibilityType('public'));



$graphServiceClient->teams()->byTeamId('team-id')->clone()->post($requestBody);


```