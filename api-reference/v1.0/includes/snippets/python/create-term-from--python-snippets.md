---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Term()
labels_localized_label1 = LocalizedLabel()
labels_localized_label1.language_tag = 'en-US'

labels_localized_label1.name = 'Car'

labels_localized_label1.is_default = True


labelsArray []= labelsLocalizedLabel1;
request_body.labels(labelsArray)





result = await client.sites.by_site_id('site-id').term_store.sets.by_set_id('set-id').children.post(request_body = request_body)


```