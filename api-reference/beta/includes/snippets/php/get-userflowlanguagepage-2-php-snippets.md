---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->identity()->b2cUserFlows()->byB2cIdentityUserFlowId('b2cIdentityUserFlow-id')->languages()->byUserFlowLanguageConfigurationId('userFlowLanguageConfiguration-id')->overridesPages()->get()->wait();

```