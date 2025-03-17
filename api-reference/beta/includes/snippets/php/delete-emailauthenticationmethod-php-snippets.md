---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->users()->byUserId('user-id')->authentication()->emailMethods()->byEmailAuthenticationMethodId('emailAuthenticationMethod-id')->delete()->wait();

```