---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->userFlowAttributes()->byIdentityUserFlowAttributeId('identityUserFlowAttribute-id')->delete()->wait();

```