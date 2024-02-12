---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new FilteringPolicyLink();
$requestBody->setOdataType('#microsoft.graph.networkaccess.filteringPolicyLink');
$requestBody->setState(new Status('disabled'));

$result = $graphServiceClient->networkAccess()->filteringProfiles()->byFilteringProfileId('filteringProfile-id')->policies()->byPolicyLinkId('policyLink-id')->patch($requestBody)->wait();

```