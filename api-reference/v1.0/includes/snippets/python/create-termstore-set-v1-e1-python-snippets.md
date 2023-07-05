---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Set()
request_body.@odata_type = '#microsoft.graph.termStore.set'

parent_group = Group()
parent_group.id = 'fc733b51-10f1-40fd-b784-dc6d1e42804b'


request_body.parent_group = parent_group
localized_names_localized_name1 = LocalizedName()
localized_names_localized_name1.language_tag = 'en-US'

localized_names_localized_name1.name = 'Department'


localizedNamesArray []= localizedNamesLocalizedName1;
request_body.localizednames(localizedNamesArray)





result = await client.sites.by_site_id('site-id').term_store.sets.post(request_body = request_body)


```