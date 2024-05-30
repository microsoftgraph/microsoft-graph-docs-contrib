---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\TeamworkTagMember;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TeamworkTagMember();
$requestBody->setUserId('97f62344-57dc-409c-88ad-c4af14158ff5');

$result = $graphServiceClient->teams()->byTeamId('team-id')->tags()->byTeamworkTagId('teamworkTag-id')->members()->post($requestBody)->wait();

```