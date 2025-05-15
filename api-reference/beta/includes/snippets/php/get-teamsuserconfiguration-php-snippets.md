---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->admin()->teams()->userConfigurations()->byTeamsUserConfigurationId('teamsUserConfiguration-id')->get()->wait();

```