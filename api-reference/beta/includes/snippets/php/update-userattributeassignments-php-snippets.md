---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new IdentityUserFlowAttributeAssignment();
$requestBody->setUserInputType(new IdentityUserFlowAttributeInputType('textbox'));



$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cUserFlowId('b2cIdentityUserFlow-id')->userAttributeAssignments()->byUserAttributeAssignmentId('identityUserFlowAttributeAssignment-id')->patch($requestBody);


```