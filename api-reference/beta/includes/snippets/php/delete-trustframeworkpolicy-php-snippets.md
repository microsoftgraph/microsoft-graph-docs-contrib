---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->trustFramework()->policies()->byTrustFrameworkPolicyId('trustFrameworkPolicy-id')->delete()->wait();

```