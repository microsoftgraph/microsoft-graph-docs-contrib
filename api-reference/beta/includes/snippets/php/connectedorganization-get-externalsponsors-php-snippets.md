---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identityGovernance()->entitlementManagement()->connectedOrganizations()->byConnectedOrganizationId('connectedOrganization-id')->externalSponsors()->get()->wait();

```