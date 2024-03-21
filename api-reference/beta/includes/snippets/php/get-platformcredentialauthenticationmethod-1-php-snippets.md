---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->authentication()->platformCredentialMethods()->byPlatformCredentialAuthenticationMethodId('platformCredentialAuthenticationMethod-id')->get()->wait();

```