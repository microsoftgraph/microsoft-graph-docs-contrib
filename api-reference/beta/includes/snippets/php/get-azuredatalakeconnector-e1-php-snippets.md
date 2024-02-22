---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->external()->industryData()->dataConnectors()->byIndustryDataConnectorId('industryDataConnector-id')->get()->wait();

```