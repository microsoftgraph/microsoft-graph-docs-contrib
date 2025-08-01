---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);


$graphServiceClient->networkAccess()->tls()->externalCertificateAuthorityCertificates()->byExternalCertificateAuthorityCertificateId('externalCertificateAuthorityCertificate-id')->delete()->wait();

```