---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RegionalAndLanguageSettings()
authoring_languages_locale_info1 = LocaleInfo()
authoring_languages_locale_info1.locale = 'en-US'


authoringLanguagesArray []= authoringLanguagesLocaleInfo1;
authoring_languages_locale_info2 = LocaleInfo()
authoring_languages_locale_info2.locale = 'es-MX'


authoringLanguagesArray []= authoringLanguagesLocaleInfo2;
request_body.authoringlanguages(authoringLanguagesArray)


default_regional_format = LocaleInfo()
default_regional_format.locale = 'en-US'


request_body.default_regional_format = default_regional_format



result = await client.me.settings.regional_and_language_settings.patch(request_body = request_body)


```