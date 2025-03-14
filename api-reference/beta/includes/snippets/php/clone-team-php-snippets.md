---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Teams\Item\Clone\ClonePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\ClonableTeamParts;
use Microsoft\Graph\Beta\Generated\Models\TeamVisibilityType;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ClonePostRequestBody();
$requestBody->setDisplayName('Library Assist');
$requestBody->setDescription('Self help community for library');
$requestBody->setMailNickname('libassist');
$requestBody->setPartsToClone(new ClonableTeamParts('apps,tabs,settings,channels,members'));
$requestBody->setVisibility(new TeamVisibilityType('public'));

$graphServiceClient->teams()->byTeamId('team-id')->escapedClone()->post($requestBody)->wait();

```