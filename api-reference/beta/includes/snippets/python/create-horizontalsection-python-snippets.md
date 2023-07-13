---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = HorizontalSection()
request_body.emphasis(SectionEmphasisType.Soft('sectionemphasistype.soft'))

request_body.layout(HorizontalSectionLayoutType.OneColumn('horizontalsectionlayouttype.onecolumn'))

request_body.id = '3'

columns_horizontal_section_column1 = HorizontalSectionColumn()
columns_horizontal_section_column1.id = '1'

columns_horizontal_section_column1.Width = 12

webparts_web_part1 = WebPart()
webparts_web_part1.id = '20a69b85-529c-41f3-850e-c93458aa74eb'

additional_data = [
'inner_html' => '<p>sample text in text web part</p>', 
];
webparts_web_part1.additional_data(additional_data)



webpartsArray []= webpartsWebPart1;
columns_horizontal_section_column1.webparts(webpartsArray)



columnsArray []= columnsHorizontalSectionColumn1;
request_body.columns(columnsArray)





result = await client.sites.by_site_id('site-id').pages.by_page_id('sitePage-id').canva_layout.horizontal_sections.post(request_body = request_body)


```