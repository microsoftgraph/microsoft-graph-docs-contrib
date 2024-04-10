---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ClonePostRequestBody;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClonePostRequestBody();
$requestBody->setDisplayName('Library Assist');
$requestBody->setDescription('Self help community for library');
$requestBody->setMailNickname('libassist');
$requestBody->setPartsToClone(new ClonableTeamParts('apps,tabs,settings,channels,members'));
$requestBody->setVisibility(new TeamVisibilityType('public'));

$graphServiceClient->teams()->byTeamId('team-id')->escapedClone()->post($requestBody)->wait();

```