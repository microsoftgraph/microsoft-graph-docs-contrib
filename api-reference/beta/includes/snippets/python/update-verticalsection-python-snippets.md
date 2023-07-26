---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = VerticalSection()
request_body.emphasis(SectionEmphasisType.Strong('sectionemphasistype.strong'))




result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').canva_layout.vertical_section.patch(request_body = request_body)


```