---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionsId('termsAndConditions-id')->assignments()->byTermsAndConditionsAssignmentId('termsAndConditionsAssignment-id')->get()->wait();

```