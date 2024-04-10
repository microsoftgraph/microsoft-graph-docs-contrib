---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->teams()->byTeamId('team-id')->channels()->byChannelId('channel-id')->sharedWithTeams()->bySharedWithChannelTeamInfoId('sharedWithChannelTeamInfo-id')->delete()->wait();

```