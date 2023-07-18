---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SitePage()
request_body.@odata_type = '#microsoft.graph.sitePage'

request_body.name = 'test.aspx'

request_body.title = 'test'

request_body.pagelayout(PageLayoutType.Article('pagelayouttype.article'))

request_body.show_comments = True

request_body.show_recommended_pages = False

title_area = TitleArea()
title_area.enable_gradient_effect = True

title_area.image_web_url = '/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG'

title_area.layout(TitleAreaLayoutType.ColorBlock('titlearealayouttype.colorblock'))

title_area.show_author = True

title_area.show_published_date = False

title_area.show_text_block_above_title = False

title_area.text_above_title = 'TEXT ABOVE TITLE'

title_area.textalignment(TitleAreaTextAlignmentType.Left('titleareatextalignmenttype.left'))

additional_data = [
'image_source_type' => 2,
'title' => 'sample1', 
];
title_area.additional_data(additional_data)



request_body.title_area = title_area
canvas_layout = CanvasLayout()
horizontal_sections_horizontal_section1 = HorizontalSection()
horizontal_sections_horizontal_section1.layout(HorizontalSectionLayoutType.OneThirdRightColumn('horizontalsectionlayouttype.onethirdrightcolumn'))

horizontal_sections_horizontal_section1.id = '1'

horizontal_sections_horizontal_section1.emphasis(SectionEmphasisType.None('sectionemphasistype.none'))

columns_horizontal_section_column1 = HorizontalSectionColumn()
columns_horizontal_section_column1.id = '1'

columns_horizontal_section_column1.Width = 8

webparts_web_part1 = WebPart()
webparts_web_part1.id = '6f9230af-2a98-4952-b205-9ede4f9ef548'

additional_data = [
'inner_html' => '<p><b>Hello!</b></p>', 
];
webparts_web_part1.additional_data(additional_data)



webpartsArray []= webpartsWebPart1;
columns_horizontal_section_column1.webparts(webpartsArray)



columnsArray []= columnsHorizontalSectionColumn1;
columns_horizontal_section_column2 = HorizontalSectionColumn()
columns_horizontal_section_column2.id = '2'

columns_horizontal_section_column2.Width = 4

webparts_web_part1 = WebPart()
webparts_web_part1.id = '73d07dde-3474-4545-badb-f28ba239e0e1'

additional_data = [
'web_part_type' => 'd1d91016-032f-456d-98a4-721247c305e8', 
'data' => webparts_web_part1 = Data()
	webparts_web_part1.data_version = '1.9'

	webparts_web_part1.description = 'Show an image on your page'

	webparts_web_part1.title = 'Image'

properties = Properties()
	properties.ImageSourceType = 2

	properties.alt_text = ''

	properties.overlay_text = ''

	properties.siteid = '0264cabe-6b92-450a-b162-b0c3d54fe5e8'

	properties.webid = 'f3989670-cd37-4514-8ccb-0f7c2cbe5314'

	properties.listid = 'bdb41041-eb06-474e-ac29-87093386bb14'

	properties.uniqueid = 'd9f94b40-78ba-48d0-a39f-3cb23c2fe7eb'

	properties.ImgWidth = 4288

	properties.ImgHeight = 2848

	properties.fix_aspect_ratio = False

	properties.caption_text = ''

	properties.alignment = 'Center'


webparts_web_part1.properties = properties
server_processed_content = ServerProcessedContent()
image_sources1 = ()
	image_sources1.key = 'imageSource'

	image_sources1.value = '/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG'


imageSourcesArray []= imageSources1;
server_processed_content.imagesources(imageSourcesArray)


custom_metadata1 = ()
custom_metadata1.key = 'imageSource'

custom_metadata1value = Value()
custom_metadata1value.siteid = '0264cabe-6b92-450a-b162-b0c3d54fe5e8'

custom_metadata1value.webid = 'f3989670-cd37-4514-8ccb-0f7c2cbe5314'

custom_metadata1value.listid = 'bdb41041-eb06-474e-ac29-87093386bb14'

custom_metadata1value.uniqueid = 'd9f94b40-78ba-48d0-a39f-3cb23c2fe7eb'

custom_metadata1value.width = '4288'

custom_metadata1value.height = '2848'


custom_metadata1.value = custom_metadata1value

customMetadataArray []= customMetadata1;
server_processed_content.custommetadata(customMetadataArray)



webparts_web_part1.server_processed_content = server_processed_content

webparts_web_part1.data = data

];
webparts_web_part1.additional_data(additional_data)



webpartsArray []= webpartsWebPart1;
columns_horizontal_section_column2.webparts(webpartsArray)



columnsArray []= columnsHorizontalSectionColumn2;
horizontal_sections_horizontal_section1.columns(columnsArray)



horizontalSectionsArray []= horizontalSectionsHorizontalSection1;
canvas_layout.horizontalsections(horizontalSectionsArray)



request_body.canvas_layout = canvas_layout



result = await client.sites.by_site_id('site-id').pages.post(request_body = request_body)


```