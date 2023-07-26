---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FeatureRolloutPolicy();
$requestBody->setDisplayName('PasswordHashSync Rollout Policy');

$requestBody->setDescription('PasswordHashSync Rollout Policy');

$requestBody->setIsEnabled(true);

$requestBody->setIsAppliedToOrganization(false);



$result = $graphServiceClient->policies()->featureRolloutPolicies()->byFeatureRolloutPolicyId('featureRolloutPolicy-id')->patch($requestBody);


```