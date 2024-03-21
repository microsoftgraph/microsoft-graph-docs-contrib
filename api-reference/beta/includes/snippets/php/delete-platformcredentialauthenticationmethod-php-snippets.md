---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->authentication()->platformCredentialMethods()->byPlatformCredentialAuthenticationMethodId('platformCredentialAuthenticationMethod-id')->delete()->wait();

```