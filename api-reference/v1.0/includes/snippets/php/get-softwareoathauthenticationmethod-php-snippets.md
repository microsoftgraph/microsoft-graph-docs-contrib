---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->authentication()->softwareOathMethods()->bySoftwareOathAuthenticationMethodId('softwareOathAuthenticationMethod-id')->get()->wait();

```