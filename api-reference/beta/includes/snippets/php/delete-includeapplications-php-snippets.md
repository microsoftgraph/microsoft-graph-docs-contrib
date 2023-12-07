---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW VERSION OF THE SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->conditions()->applications()->includeApplications()->byAuthenticationConditionApplicationAppId('authenticationConditionApplication-appId')->delete()->wait();

```