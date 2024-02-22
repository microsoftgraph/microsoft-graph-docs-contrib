---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->me()->authentication()->phoneMethods()->byPhoneAuthenticationMethodId('phoneAuthenticationMethod-id')->delete()->wait();

```