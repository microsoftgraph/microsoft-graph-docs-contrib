---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\SendDtmfTonesPostRequestBody;
use Microsoft\Graph\Generated\Models\Tone;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new SendDtmfTonesPostRequestBody();
$requestBody->setTones([new Tone('tone1'),new Tone('tone2'),new Tone('tone3'),new Tone('tone4'),new Tone('tone5'),new Tone('tone6'),new Tone('tone7'),new Tone('tone8'),new Tone('tone9'),new Tone('tone0'),new Tone('star'),new Tone('pound'),	]);
$requestBody->setDelayBetweenTonesMs(1000);
$requestBody->setClientContext('e0be71f1-a14f-4cec-b65a-e7aba5db7c53');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->sendDtmfTones()->post($requestBody)->wait();

```