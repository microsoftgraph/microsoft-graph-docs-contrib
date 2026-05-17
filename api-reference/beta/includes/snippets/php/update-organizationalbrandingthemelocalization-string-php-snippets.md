---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\OrganizationalBrandingThemeLocalization;
use Microsoft\Graph\Beta\Generated\Models\LoginPageBrandingVisualElement;
use Microsoft\Graph\Beta\Generated\Models\ContentCustomization;
use Microsoft\Graph\Beta\Generated\Models\LoginPageLayoutConfiguration;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new OrganizationalBrandingThemeLocalization();
$requestBody->setOdataType('#microsoft.graph.organizationalBrandingThemeLocalization');
$requestBody->setLocale('en-US');
$accountResetCredentials = new LoginPageBrandingVisualElement();
$accountResetCredentials->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setAccountResetCredentials($accountResetCredentials);
$requestBody->setBackgroundImageRelativeUrl(null);
$requestBody->setBannerLogoRelativeUrl(null);
$cannotAccessYourAccount = new LoginPageBrandingVisualElement();
$cannotAccessYourAccount->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setCannotAccessYourAccount($cannotAccessYourAccount);
$requestBody->setCdnHosts([	]);
$contentCustomization = new ContentCustomization();
$contentCustomization->setOdataType('microsoft.graph.contentCustomization');
$requestBody->setContentCustomization($contentCustomization);
$requestBody->setCustomCSSRelativeUrl(null);
$requestBody->setFaviconRelativeUrl(null);
$forgotMyPassword = new LoginPageBrandingVisualElement();
$forgotMyPassword->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setForgotMyPassword($forgotMyPassword);
$requestBody->setHeaderBackgroundColor('#3377ffff');
$requestBody->setHeaderLogoRelativeUrl(null);
$loginPageLayoutConfiguration = new LoginPageLayoutConfiguration();
$loginPageLayoutConfiguration->setOdataType('microsoft.graph.loginPageLayoutConfiguration');
$requestBody->setLoginPageLayoutConfiguration($loginPageLayoutConfiguration);
$requestBody->setPageBackgroundColor('#FFFF33');
$privacyAndCookies = new LoginPageBrandingVisualElement();
$privacyAndCookies->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setPrivacyAndCookies($privacyAndCookies);
$resetItNow = new LoginPageBrandingVisualElement();
$resetItNow->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setResetItNow($resetItNow);
$requestBody->setSignInPageText('Welcome to Contoso');
$requestBody->setSquareLogoRelativeUrl(null);
$requestBody->setSquareLogoDarkRelativeUrl(null);
$termsOfUse = new LoginPageBrandingVisualElement();
$termsOfUse->setOdataType('microsoft.graph.loginPageBrandingVisualElement');
$requestBody->setTermsOfUse($termsOfUse);
$requestBody->setUsernameHintText('ContosoUsername');

$result = $graphServiceClient->organization()->byOrganizationId('organization-id')->branding()->themes()->byOrganizationalBrandingThemeId('organizationalBrandingTheme-id')->localizations()->byOrganizationalBrandingThemeLocalizationLocale('organizationalBrandingThemeLocalization-locale')->patch($requestBody)->wait();

```