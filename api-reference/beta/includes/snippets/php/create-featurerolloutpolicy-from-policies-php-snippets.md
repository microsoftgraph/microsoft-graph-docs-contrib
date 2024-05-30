---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\FeatureRolloutPolicy;
use Microsoft\Graph\Beta\Generated\Models\StagedFeatureName;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FeatureRolloutPolicy();
$requestBody->setDisplayName('PassthroughAuthentication rollout policy');
$requestBody->setDescription('PassthroughAuthentication rollout policy');
$requestBody->setFeature(new StagedFeatureName('passthroughAuthentication'));
$requestBody->setIsEnabled(true);
$requestBody->setIsAppliedToOrganization(false);

$result = $graphServiceClient->policies()->featureRolloutPolicies()->post($requestBody)->wait();

```