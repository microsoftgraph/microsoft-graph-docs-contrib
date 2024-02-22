---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->authentication()->microsoftAuthenticatorMethods()->byMicrosoftAuthenticatorAuthenticationMethodId('microsoftAuthenticatorAuthenticationMethod-id')->delete()->wait();

```