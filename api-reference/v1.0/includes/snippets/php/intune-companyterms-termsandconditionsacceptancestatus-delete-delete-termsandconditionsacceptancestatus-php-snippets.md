---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->deviceManagement()->termsAndConditions()->byTermsAndConditionsId('termsAndConditions-id')->acceptanceStatuses()->byTermsAndConditionsAcceptanceStatusId('termsAndConditionsAcceptanceStatus-id')->delete()->wait();

```