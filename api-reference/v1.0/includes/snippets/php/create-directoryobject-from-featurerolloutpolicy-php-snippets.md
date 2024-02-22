---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ReferenceCreate();
$requestBody->setOdataId('https://graph.microsoft.com/v1.0/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da');

$graphServiceClient->policies()->featureRolloutPolicies()->byFeatureRolloutPolicyId('featureRolloutPolicy-id')->appliesTo()->ref()->post($requestBody)->wait();

```