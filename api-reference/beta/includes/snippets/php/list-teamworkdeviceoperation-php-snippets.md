---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->teamwork()->devices()->byTeamworkDeviceId('teamworkDevice-id')->operations()->get()->wait();

```