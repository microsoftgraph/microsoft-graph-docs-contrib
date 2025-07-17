---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\VirtualEventPresenter;
use Microsoft\Graph\Generated\Models\CommunicationsGuestIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventPresenter();
$identity = new CommunicationsGuestIdentity();
$identity->setOdataType('#microsoft.graph.communicationsGuestIdentity');
$identity->setDisplayName('Guest Speaker');
$additionalData = [
	'email' => 'guest.speaker@fabrikam.com',
];
$identity->setAdditionalData($additionalData);
$requestBody->setIdentity($identity);

$result = $graphServiceClient->solutions()->virtualEvents()->webinars()->byVirtualEventWebinarId('virtualEventWebinar-id')->presenters()->post($requestBody)->wait();

```