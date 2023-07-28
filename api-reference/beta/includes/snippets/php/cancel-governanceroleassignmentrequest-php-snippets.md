---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->privilegedAccess()->byPrivilegedAccessId('privilegedAccess-id')->roleAssignmentRequests()->byGovernanceRoleAssignmentRequestId('governanceRoleAssignmentRequest-id')->cancel()->post();


```