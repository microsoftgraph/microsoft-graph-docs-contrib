---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new FeatureRolloutPolicy();
$requestBody->setDisplayName('PassthroughAuthentication rollout policy');

$requestBody->setDescription('PassthroughAuthentication rollout policy');

$requestBody->setFeature(new StagedFeatureName('passthroughauthentication'));

$requestBody->setIsEnabled(true);

$requestBody->setIsAppliedToOrganization(false);



$result = $graphServiceClient->policies()->featureRolloutPolicies()->post($requestBody);


```