---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->outboundSharedUserProfiles()->byOutboundSharedUserProfileUserId('outboundSharedUserProfile-userId')->tenants()->byTenantReferenceTenantId('tenantReference-tenantId')->removePersonalData()->post()->wait();

```