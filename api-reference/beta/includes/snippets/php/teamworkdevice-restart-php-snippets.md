---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->teamwork()->devices()->byTeamworkDeviceId('teamworkDevice-id')->restart()->post()->wait();

```