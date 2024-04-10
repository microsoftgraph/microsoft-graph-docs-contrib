---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->deviceLinks()->byDeviceLinkId('deviceLink-id')->delete()->wait();

```