---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ForwardingPolicyLink;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingPolicyLink();
$requestBody->setOdataType('#microsoft.graph.networkaccess.forwardingPolicyLink');
$requestBody->setState(new Status('enabled'));

$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->policies()->byPolicyLinkId('policyLink-id')->patch($requestBody)->wait();

```