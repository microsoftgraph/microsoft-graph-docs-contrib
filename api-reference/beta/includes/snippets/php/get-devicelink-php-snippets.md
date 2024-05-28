---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->networkAccess()->connectivity()->remoteNetworks()->byRemoteNetworkId('remoteNetwork-id')->deviceLinks()->byDeviceLinkId('deviceLink-id')->get()->wait();

```