---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityProtection()->riskyServicePrincipals()->byRiskyServicePrincipalId('riskyServicePrincipal-id')->history()->get()->wait();

```