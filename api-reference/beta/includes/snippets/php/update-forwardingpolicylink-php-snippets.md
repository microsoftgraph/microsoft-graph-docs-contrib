---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ForwardingPolicyLink();
$requestBody->setOdataType('#microsoft.graph.networkaccess.forwardingPolicyLink');

$requestBody->setState(new Status('enabled'));



$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->policies()->byPolicyLinkId('policyLink-id')->patch($requestBody);


```