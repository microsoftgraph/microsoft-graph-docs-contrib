---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->directory()->outboundSharedUserProfiles()->byOutboundSharedUserProfileId('outboundSharedUserProfile-userId')->tenants()->byTenantReferenceId('tenantReference-tenantId')->removePersonalData()->post()->wait();

```