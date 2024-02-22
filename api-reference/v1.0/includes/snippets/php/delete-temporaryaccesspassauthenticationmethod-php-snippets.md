---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->authentication()->temporaryAccessPassMethods()->byTemporaryAccessPassAuthenticationMethodId('temporaryAccessPassAuthenticationMethod-id')->delete()->wait();

```