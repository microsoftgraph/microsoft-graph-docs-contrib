---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->userFlows()->byIdentityUserFlowId('identityUserFlow-id')->delete()->wait();

```