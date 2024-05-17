---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\FeatureRolloutPolicy;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FeatureRolloutPolicy();
$requestBody->setDisplayName('PassthroughAuthentication rollout policy');
$requestBody->setDescription('PassthroughAuthentication rollout policy');
$requestBody->setFeature(new StagedFeatureName('passthroughAuthentication'));
$requestBody->setIsEnabled(true);
$requestBody->setIsAppliedToOrganization(false);

$result = $graphServiceClient->policies()->featureRolloutPolicies()->post($requestBody)->wait();

```