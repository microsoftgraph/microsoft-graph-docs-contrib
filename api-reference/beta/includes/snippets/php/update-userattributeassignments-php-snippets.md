---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textBox'));



$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->byIdentityUserFlowAttributeAssignmentId('identityUserFlowAttributeAssignment-id')->patch($requestBody);


```