---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatIntelligence()->hostTrackers()->byHostTrackerId('hostTracker-id')->get()->wait();

```