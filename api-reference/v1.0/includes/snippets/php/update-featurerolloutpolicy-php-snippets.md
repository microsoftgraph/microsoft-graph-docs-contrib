---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FeatureRolloutPolicy();
$requestBody->setDisplayName('PasswordHashSync Rollout Policy');
$requestBody->setDescription('PasswordHashSync Rollout Policy');
$requestBody->setIsEnabled(true);
$requestBody->setIsAppliedToOrganization(false);

$result = $graphServiceClient->policies()->featureRolloutPolicies()->byFeatureRolloutPolicyId('featureRolloutPolicy-id')->patch($requestBody)->wait();

```