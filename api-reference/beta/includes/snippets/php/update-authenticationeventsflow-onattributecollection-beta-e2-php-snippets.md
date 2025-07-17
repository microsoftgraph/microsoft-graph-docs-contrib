---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\ExternalUsersSelfServiceSignUpEventsFlow;
use Microsoft\Graph\Beta\Generated\Models\OnAttributeCollectionExternalUsersSelfServiceSignUp;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationAttributeCollectionPage;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationAttributeCollectionPageViewConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationAttributeCollectionInputConfiguration;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationAttributeCollectionInputType;
use Microsoft\Graph\Beta\Generated\Models\AuthenticationAttributeCollectionOptionConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');
$onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
$onAttributeCollection->setOdataType('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');
$onAttributeCollectionAttributeCollectionPage = new AuthenticationAttributeCollectionPage();
$onAttributeCollectionAttributeCollectionPage->setCustomStringsFileId(null);
$viewsAuthenticationAttributeCollectionPageViewConfiguration1 = new AuthenticationAttributeCollectionPageViewConfiguration();
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setTitle(null);
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setDescription(null);
$inputsAuthenticationAttributeCollectionInputConfiguration1 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1->setAttribute('email');
$inputsAuthenticationAttributeCollectionInputConfiguration1->setLabel('Email Address');
$inputsAuthenticationAttributeCollectionInputConfiguration1->setInputType(new AuthenticationAttributeCollectionInputType('text'));
$inputsAuthenticationAttributeCollectionInputConfiguration1->setDefaultValue(null);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setHidden(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setEditable(false);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setRequired(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');
$inputsAuthenticationAttributeCollectionInputConfiguration1->setOptions([	]);
$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration1;
$inputsAuthenticationAttributeCollectionInputConfiguration2 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration2->setAttribute('displayName');
$inputsAuthenticationAttributeCollectionInputConfiguration2->setLabel('Display Name');
$inputsAuthenticationAttributeCollectionInputConfiguration2->setInputType(new AuthenticationAttributeCollectionInputType('text'));
$inputsAuthenticationAttributeCollectionInputConfiguration2->setDefaultValue(null);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setHidden(false);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setEditable(true);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setRequired(true);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');
$inputsAuthenticationAttributeCollectionInputConfiguration2->setOptions([	]);
$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration2;
$inputsAuthenticationAttributeCollectionInputConfiguration3 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration3->setAttribute('city');
$inputsAuthenticationAttributeCollectionInputConfiguration3->setLabel('City');
$inputsAuthenticationAttributeCollectionInputConfiguration3->setInputType(new AuthenticationAttributeCollectionInputType('text'));
$inputsAuthenticationAttributeCollectionInputConfiguration3->setDefaultValue(null);
$inputsAuthenticationAttributeCollectionInputConfiguration3->setHidden(false);
$inputsAuthenticationAttributeCollectionInputConfiguration3->setEditable(true);
$inputsAuthenticationAttributeCollectionInputConfiguration3->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration3->setRequired(true);
$inputsAuthenticationAttributeCollectionInputConfiguration3->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');
$inputsAuthenticationAttributeCollectionInputConfiguration3->setOptions([	]);
$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration3;
$inputsAuthenticationAttributeCollectionInputConfiguration4 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration4->setAttribute('extension_331d514c0c18477583ea7dd5a79feda2_RockorCountry');
$inputsAuthenticationAttributeCollectionInputConfiguration4->setLabel('Rock music or Country');
$inputsAuthenticationAttributeCollectionInputConfiguration4->setInputType(new AuthenticationAttributeCollectionInputType('radioSingleSelect'));
$inputsAuthenticationAttributeCollectionInputConfiguration4->setDefaultValue(null);
$inputsAuthenticationAttributeCollectionInputConfiguration4->setHidden(false);
$inputsAuthenticationAttributeCollectionInputConfiguration4->setEditable(true);
$inputsAuthenticationAttributeCollectionInputConfiguration4->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration4->setRequired(true);
$inputsAuthenticationAttributeCollectionInputConfiguration4->setValidationRegEx('^.*');
$optionsAuthenticationAttributeCollectionOptionConfiguration1 = new AuthenticationAttributeCollectionOptionConfiguration();
$optionsAuthenticationAttributeCollectionOptionConfiguration1->setLabel('Rock music');
$optionsAuthenticationAttributeCollectionOptionConfiguration1->setValue('Rock');
$optionsArray []= $optionsAuthenticationAttributeCollectionOptionConfiguration1;
$optionsAuthenticationAttributeCollectionOptionConfiguration2 = new AuthenticationAttributeCollectionOptionConfiguration();
$optionsAuthenticationAttributeCollectionOptionConfiguration2->setLabel('Country music');
$optionsAuthenticationAttributeCollectionOptionConfiguration2->setValue('Country');
$optionsArray []= $optionsAuthenticationAttributeCollectionOptionConfiguration2;
$inputsAuthenticationAttributeCollectionInputConfiguration4->setOptions($optionsArray);

$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration4;
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setInputs($inputsArray);

$viewsArray []= $viewsAuthenticationAttributeCollectionPageViewConfiguration1;
$onAttributeCollectionAttributeCollectionPage->setViews($viewsArray);

$onAttributeCollection->setAttributeCollectionPage($onAttributeCollectionAttributeCollectionPage);
$requestBody->setOnAttributeCollection($onAttributeCollection);

$result = $graphServiceClient->identity()->authenticationEventsFlows()->byAuthenticationEventsFlowId('authenticationEventsFlow-id')->patch($requestBody)->wait();

```