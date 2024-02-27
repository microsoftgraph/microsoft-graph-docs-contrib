---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestConfiguration = new TrainingLanguageDetailItemRequestBuilderGetRequestConfiguration();
$queryParameters = TrainingLanguageDetailItemRequestBuilderGetRequestConfiguration::createQueryParameters();
$queryParameters->filter = "locale eq 'en'";
$requestConfiguration->queryParameters = $queryParameters;


$result = $graphServiceClient->security()->attackSimulation()->trainings()->byTrainingId('training-id')->languageDetails()->byTrainingLanguageDetailId('trainingLanguageDetail-id')->get($requestConfiguration)->wait();

```