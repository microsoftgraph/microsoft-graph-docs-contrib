---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->servicePrincipals()->byServicePrincipalId('servicePrincipal-id')->tokenLifetimePolicies()->byTokenLifetimePolicyId('tokenLifetimePolicy-id')->ref()->delete()->wait();

```