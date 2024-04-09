---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\ExternalUsersSelfServiceSignUpEventsFlow;
use Microsoft\Graph\Generated\Models\AuthenticationConditions;
use Microsoft\Graph\Generated\Models\AuthenticationConditionsApplications;
use Microsoft\Graph\Generated\Models\AuthenticationConditionApplication;
use Microsoft\Graph\Generated\Models\OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp;
use Microsoft\Graph\Generated\Models\IdentityProviderBase;
use Microsoft\Graph\Generated\Models\OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp;
use Microsoft\Graph\Generated\Models\OnAttributeCollectionExternalUsersSelfServiceSignUp;
use Microsoft\Graph\Generated\Models\IdentityUserFlowAttribute;
use Microsoft\Graph\Generated\Models\AuthenticationAttributeCollectionPage;
use Microsoft\Graph\Generated\Models\AuthenticationAttributeCollectionPageViewConfiguration;
use Microsoft\Graph\Generated\Models\AuthenticationAttributeCollectionInputConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new ExternalUsersSelfServiceSignUpEventsFlow();
$requestBody->setOdataType('#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow');
$requestBody->setDisplayName('Woodgrove Drive User Flow');
$conditions = new AuthenticationConditions();
$conditionsApplications = new AuthenticationConditionsApplications();
$includeApplicationsAuthenticationConditionApplication1 = new AuthenticationConditionApplication();
$includeApplicationsAuthenticationConditionApplication1->setAppId('63856651-13d9-4784-9abf-20758d509e19');
$includeApplicationsArray []= $includeApplicationsAuthenticationConditionApplication1;
$conditionsApplications->setIncludeApplications($includeApplicationsArray);

$conditions->setApplications($conditionsApplications);
$requestBody->setConditions($conditions);
$onAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp();
$onAuthenticationMethodLoadStart->setOdataType('#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp');
$identityProvidersIdentityProviderBase1 = new IdentityProviderBase();
$identityProvidersIdentityProviderBase1->setId('EmailPassword-OAUTH');
$identityProvidersArray []= $identityProvidersIdentityProviderBase1;
$onAuthenticationMethodLoadStart->setIdentityProviders($identityProvidersArray);

$requestBody->setOnAuthenticationMethodLoadStart($onAuthenticationMethodLoadStart);
$onInteractiveAuthFlowStart = new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp();
$onInteractiveAuthFlowStart->setOdataType('#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp');
$onInteractiveAuthFlowStart->setIsSignUpAllowed(true);
$requestBody->setOnInteractiveAuthFlowStart($onInteractiveAuthFlowStart);
$onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
$onAttributeCollection->setOdataType('#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp');
$attributesIdentityUserFlowAttribute1 = new IdentityUserFlowAttribute();
$attributesIdentityUserFlowAttribute1->setId('email');
$attributesIdentityUserFlowAttribute1->setDisplayName('Email Address');
$attributesIdentityUserFlowAttribute1->setDescription('Email address of the user');
$attributesIdentityUserFlowAttribute1->setUserFlowAttributeType(new IdentityUserFlowAttributeType('builtIn'));
$attributesIdentityUserFlowAttribute1->setDataType(new IdentityUserFlowAttributeDataType('string'));
$attributesArray []= $attributesIdentityUserFlowAttribute1;
$attributesIdentityUserFlowAttribute2 = new IdentityUserFlowAttribute();
$attributesIdentityUserFlowAttribute2->setId('displayName');
$attributesIdentityUserFlowAttribute2->setDisplayName('Display Name');
$attributesIdentityUserFlowAttribute2->setDescription('Display Name of the User.');
$attributesIdentityUserFlowAttribute2->setUserFlowAttributeType(new IdentityUserFlowAttributeType('builtIn'));
$attributesIdentityUserFlowAttribute2->setDataType(new IdentityUserFlowAttributeDataType('string'));
$attributesArray []= $attributesIdentityUserFlowAttribute2;
$onAttributeCollection->setAttributes($attributesArray);

$onAttributeCollectionAttributeCollectionPage = new AuthenticationAttributeCollectionPage();
$viewsAuthenticationAttributeCollectionPageViewConfiguration1 = new AuthenticationAttributeCollectionPageViewConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration1->setAttribute('email');
$inputsAuthenticationAttributeCollectionInputConfiguration1->setLabel('Email Address');
$inputsAuthenticationAttributeCollectionInputConfiguration1->setInputType(new AuthenticationAttributeCollectionInputType('text'));
$inputsAuthenticationAttributeCollectionInputConfiguration1->setHidden(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setEditable(false);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setRequired(true);
$inputsAuthenticationAttributeCollectionInputConfiguration1->setValidationRegEx('^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$');
$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration1;
$inputsAuthenticationAttributeCollectionInputConfiguration2 = new AuthenticationAttributeCollectionInputConfiguration();
$inputsAuthenticationAttributeCollectionInputConfiguration2->setAttribute('displayName');
$inputsAuthenticationAttributeCollectionInputConfiguration2->setLabel('Display Name');
$inputsAuthenticationAttributeCollectionInputConfiguration2->setInputType(new AuthenticationAttributeCollectionInputType('text'));
$inputsAuthenticationAttributeCollectionInputConfiguration2->setHidden(false);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setEditable(true);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setWriteToDirectory(true);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setRequired(false);
$inputsAuthenticationAttributeCollectionInputConfiguration2->setValidationRegEx('^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$');
$inputsArray []= $inputsAuthenticationAttributeCollectionInputConfiguration2;
$viewsAuthenticationAttributeCollectionPageViewConfiguration1->setInputs($inputsArray);

$viewsArray []= $viewsAuthenticationAttributeCollectionPageViewConfiguration1;
$onAttributeCollectionAttributeCollectionPage->setViews($viewsArray);

$onAttributeCollection->setAttributeCollectionPage($onAttributeCollectionAttributeCollectionPage);
$requestBody->setOnAttributeCollection($onAttributeCollection);

$result = $graphServiceClient->identity()->authenticationEventsFlows()->post($requestBody)->wait();

```