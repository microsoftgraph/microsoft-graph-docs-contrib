---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->sharedWithTeams()->bySharedWithChannelTeamInfoId('sharedWithChannelTeamInfo-id')->get()->wait();

```