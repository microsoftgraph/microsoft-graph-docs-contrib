---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Bookmark()
request_body.display_name = 'Contoso Install Site'

request_body.web_url = 'http://www.contoso.com/'

request_body.description = 'Try or buy Contoso for Home or Business and view product information'

keywords = AnswerKeyword()
keywords.Keywords(['Contoso', 'install', ])

keywords.ReservedKeywords(['Contoso', ])

keywords.match_similar_keywords = True


request_body.keywords = keywords
request_body.availabilityStartDateTime=null

request_body.availabilityEndDateTime=null

request_body.Platforms([request_body.deviceplatformtype(DevicePlatformType.Windows('deviceplatformtype.windows'))
])

targeted_variations_answer_variant1 = AnswerVariant()
targeted_variations_answer_variant1.language_tag = 'es-es'

targeted_variations_answer_variant1.display_name = 'Sitio de instalación Contoso'

targeted_variations_answer_variant1.description = 'Pruebe o compre Contoso hogar o negocios y vea la información del producto'


targetedVariationsArray []= targetedVariationsAnswerVariant1;
request_body.targetedvariations(targetedVariationsArray)


request_body.state(AnswerState.Published('answerstate.published'))




result = await client.search.bookmarks.post(request_body = request_body)


```