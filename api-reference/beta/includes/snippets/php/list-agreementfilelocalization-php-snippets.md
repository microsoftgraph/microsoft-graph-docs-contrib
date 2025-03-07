---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\TermsOfUse\Agreements\Item\AgreementItemRequestBuilderGetRequestConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new AgreementItemRequestBuilderGetRequestConfiguration();
$queryParameters = AgreementItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->expand = ["files"];
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->identityGovernance()->termsOfUse()->agreements()->byAgreementId('agreement-id')->get($requestConfiguration)->wait();

```