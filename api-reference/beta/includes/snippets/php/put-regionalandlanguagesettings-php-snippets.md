---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RegionalAndLanguageSettingsPutRequestBody();
$additionalData = [
		'defaultDisplayLanguage' => $requestBody = new DefaultDisplayLanguage();
$		requestBody->setLocale('en-US');


$requestBody->setDefaultDisplayLanguage($defaultDisplayLanguage);

		'authoringLanguages' => $authoringLanguages1 = new ();
$		authoringLanguages1->setLocale('fr-FR');


$authoringLanguagesArray []= $authoringLanguages1;
$authoringLanguages2 = new ();
$		authoringLanguages2->setLocale('de-DE');


$authoringLanguagesArray []= $authoringLanguages2;
$requestBody->setAuthoringLanguages($authoringLanguagesArray);


	'defaultTranslationLanguage' => $requestBody = new DefaultTranslationLanguage();
$	requestBody->setLocale('en-US');


$requestBody->setDefaultTranslationLanguage($defaultTranslationLanguage);

	'defaultSpeechInputLanguage' => $requestBody = new DefaultSpeechInputLanguage();
$	requestBody->setLocale('en-US');


$requestBody->setDefaultSpeechInputLanguage($defaultSpeechInputLanguage);

	'defaultRegionalFormat' => $requestBody = new DefaultRegionalFormat();
$	requestBody->setLocale('en-GB');


$requestBody->setDefaultRegionalFormat($defaultRegionalFormat);

	'regionalFormatOverrides' => $requestBody = new RegionalFormatOverrides();
$	requestBody->setCalendar('Gregorian Calendar');

$	requestBody->setFirstDayOfWeek('Sunday');

$	requestBody->setShortDateFormat('yyyy-MM-dd');

$	requestBody->setLongDateFormat('dddd, MMMM d, yyyy');

$	requestBody->setShortTimeFormat('HH:mm');

$	requestBody->setLongTimeFormat('h:mm:ss tt');

$	requestBody->setTimeZone('Pacific Standard Time');


$requestBody->setRegionalFormatOverrides($regionalFormatOverrides);

	'translationPreferences' => $requestBody = new TranslationPreferences();
$	requestBody->setTranslationBehavior('Yes');

$languageOverrides1 = new ();
$	languageOverrides1->setLanguageTag('fr');

$	languageOverrides1->setTranslationBehavior('Yes');


$languageOverridesArray []= $languageOverrides1;
$requestBody->setLanguageOverrides($languageOverridesArray);



$requestBody->setTranslationPreferences($translationPreferences);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->me()->settings()->regionalAndLanguageSettings()->put($requestBody);


```