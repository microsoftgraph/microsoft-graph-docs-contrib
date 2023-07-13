---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = HorizontalSection()
request_body.emphasis(SectionEmphasisType.Strong('sectionemphasistype.strong'))

request_body.layout(HorizontalSectionLayoutType.TwoColumns('horizontalsectionlayouttype.twocolumns'))




result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').canva_layout.horizontal_sections.by_horizontal_section_id('horizontalSection-id').patch(request_body = request_body)


```