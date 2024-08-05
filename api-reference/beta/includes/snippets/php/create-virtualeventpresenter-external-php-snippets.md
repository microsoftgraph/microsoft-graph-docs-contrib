---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\VirtualEventPresenter;
use Microsoft\Graph\Beta\Generated\Models\CommunicationsGuestIdentity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new VirtualEventPresenter();
$identity = new CommunicationsGuestIdentity();
$identity->setOdataType('#microsoft.graph.communicationsGuestIdentity');
$identity->setDisplayName('Guest Speaker');
$identity->setEmail('guest.speaker@fabrikam.com');
$requestBody->setIdentity($identity);

$result = $graphServiceClient->solutions()->virtualEvents()->townhalls()->byVirtualEventTownhallId('virtualEventTownhall-id')->presenters()->post($requestBody)->wait();

```