---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->networkAccess()->connectivity()->branches()->byBranchSiteId('branchSite-id')->connectivityConfiguration()->get()->wait();

```