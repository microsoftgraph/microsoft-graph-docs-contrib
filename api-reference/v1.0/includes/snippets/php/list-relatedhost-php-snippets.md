---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$result = $graphServiceClient->security()->threatIntelligence()->sslCertificates()->bySslCertificateId('sslCertificate-id')->relatedHosts()->get()->wait();

```