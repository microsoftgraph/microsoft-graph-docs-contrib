---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->b2xUserFlows()->byB2xIdentityUserFlowId('b2xIdentityUserFlow-id')->userAttributeAssignments()->getOrder()->get();


```