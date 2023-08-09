---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new DelegatedAdminRelationshipRequest();
$requestBody->setAction(new DelegatedAdminRelationshipRequestAction('lockForApproval'));



$result = $graphServiceClient->tenantRelationships()->delegatedAdminRelationships()->byDelegatedAdminRelationshipId('delegatedAdminRelationship-id')->requests()->post($requestBody);


```