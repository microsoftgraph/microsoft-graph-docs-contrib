---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->authentication()->phoneMethods()->byPhoneAuthenticationMethodId('phoneAuthenticationMethod-id')->enableSmsSignIn()->post()->wait();

```