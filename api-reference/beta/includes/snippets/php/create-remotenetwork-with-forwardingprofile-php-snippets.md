---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\RemoteNetwork;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\Region;
use Microsoft\Graph\Beta\Generated\Models\Networkaccess\ForwardingProfile;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new RemoteNetwork();
$requestBody->setName('Bellevue branch w/ fwd profile');
$requestBody->setRegion(new Region('canadaEast'));
$forwardingProfilesForwardingProfile1 = new ForwardingProfile();
$forwardingProfilesForwardingProfile1->setId('1adaf535-1e31-4e14-983f-2270408162bf');
$forwardingProfilesArray []= $forwardingProfilesForwardingProfile1;
$requestBody->setForwardingProfiles($forwardingProfilesArray);


$result = $graphServiceClient->networkAccess()->connectivity()->remoteNetworks()->post($requestBody)->wait();

```