---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->me()->informationProtection()->policy()->labels()->byInformationProtectionLabelId('informationProtectionLabel-id')->get()->wait();

```