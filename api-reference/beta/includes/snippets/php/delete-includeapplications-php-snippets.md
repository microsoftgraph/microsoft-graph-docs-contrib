---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->conditions()->applications()->includeApplications()->byAuthenticationConditionApplicationAppId('authenticationConditionApplication-appId')->delete()->wait();

```