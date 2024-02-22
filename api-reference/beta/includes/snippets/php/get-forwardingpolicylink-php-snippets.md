---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->networkAccess()->forwardingProfiles()->byForwardingProfileId('forwardingProfile-id')->policies()->byPolicyLinkId('policyLink-id')->get()->wait();

```