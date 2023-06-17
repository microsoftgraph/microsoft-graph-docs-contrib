---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new TrustFrameworkKeySet();
$requestBody->setId('keyset1');

$keysTrustFrameworkKey1 = new TrustFrameworkKey();
$keysTrustFrameworkKey1->setK('k-value');

$keysTrustFrameworkKey1->setX5c(['x5c-value', ]);

$keysTrustFrameworkKey1->setX5t('x5t-value');

$keysTrustFrameworkKey1->setKty('kty-value');

$keysTrustFrameworkKey1->setUse('use-value');

$keysTrustFrameworkKey1->setExp(99);

$keysTrustFrameworkKey1->setNbf(99);

$keysTrustFrameworkKey1->setKid('kid-value');

$keysTrustFrameworkKey1->setE('e-value');

$keysTrustFrameworkKey1->setN('n-value');

$keysTrustFrameworkKey1->setD('d-value');

$keysTrustFrameworkKey1->setP('p-value');

$keysTrustFrameworkKey1->setQ('q-value');

$keysTrustFrameworkKey1->setDp('dp-value');

$keysTrustFrameworkKey1->setDq('dq-value');

$keysTrustFrameworkKey1->setQi('qi-value');


$keysArray []= $keysTrustFrameworkKey1;
$requestBody->setKeys($keysArray);




$result = $graphServiceClient->trustFramework()->keySets()->post($requestBody);


```