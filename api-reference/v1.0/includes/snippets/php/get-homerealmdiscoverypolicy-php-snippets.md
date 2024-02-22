---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->policies()->homeRealmDiscoveryPolicies()->byHomeRealmDiscoveryPolicyId('homeRealmDiscoveryPolicy-id')->get()->wait();

```