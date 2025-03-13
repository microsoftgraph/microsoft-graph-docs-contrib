---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->outboundSharedUserProfiles()->byOutboundSharedUserProfileUserId('outboundSharedUserProfile-userId')->tenants()->byTenantReferenceTenantId('tenantReference-tenantId')->removePersonalData()->post()->wait();

```