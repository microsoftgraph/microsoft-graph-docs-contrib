---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LanguageProficiency()
request_body.display_name = 'Norwegian Bokmål'

request_body.tag = 'nb-NO'

request_body.spoken(LanguageProficiencyLevel.NativeOrBilingual('languageproficiencylevel.nativeorbilingual'))

request_body.written(LanguageProficiencyLevel.NativeOrBilingual('languageproficiencylevel.nativeorbilingual'))

request_body.reading(LanguageProficiencyLevel.NativeOrBilingual('languageproficiencylevel.nativeorbilingual'))




result = await client.me.profile.languages.post(request_body = request_body)


```