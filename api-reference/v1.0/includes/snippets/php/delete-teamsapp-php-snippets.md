---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->appCatalogs()->teamsApps()->byTeamsAppId('teamsApp-id')->delete()->wait();

```