---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.site_page import SitePage
from msgraph.generated.models.title_area import TitleArea
from msgraph.generated.models.canvas_layout import CanvasLayout
from msgraph.generated.models.horizontal_section import HorizontalSection
from msgraph.generated.models.horizontal_section_column import HorizontalSectionColumn
from msgraph.generated.models.web_part import WebPart

graph_client = GraphServiceClient(credentials, scopes)

request_body = SitePage(
	odata_type = "#microsoft.graph.sitePage",
	name = "test.aspx",
	title = "test",
	page_layout = PageLayoutType.Article,
	show_comments = True,
	show_recommended_pages = False,
	title_area = TitleArea(
		enable_gradient_effect = True,
		image_web_url = "https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
		layout = TitleAreaLayoutType.ColorBlock,
		show_author = True,
		show_published_date = False,
		show_text_block_above_title = False,
		text_above_title = "TEXT ABOVE TITLE",
		text_alignment = TitleAreaTextAlignmentType.Left,
		additional_data = {
				"image_source_type" : 2,
				"title" : "sample1",
		}
	),
	canvas_layout = CanvasLayout(
		horizontal_sections = [
			HorizontalSection(
				layout = HorizontalSectionLayoutType.OneThirdRightColumn,
				id = "1",
				emphasis = SectionEmphasisType.None,
				columns = [
					HorizontalSectionColumn(
						id = "1",
						width = 8,
						webparts = [
							WebPart(
								id = "6f9230af-2a98-4952-b205-9ede4f9ef548",
								additional_data = {
										"inner_html" : "<p><b>Hello!</b></p>",
								}
							),
						],
					),
					HorizontalSectionColumn(
						id = "2",
						width = 4,
						webparts = [
							WebPart(
								id = "73d07dde-3474-4545-badb-f28ba239e0e1",
								additional_data = {
										"web_part_type" : "d1d91016-032f-456d-98a4-721247c305e8",
										"data" : {
												"data_version" : "1.9",
												"description" : "Show an image on your page",
												"title" : "Image",
												"properties" : {
														"image_source_type" : 2,
														"alt_text" : "",
														"overlay_text" : "",
														"siteid" : "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
														"webid" : "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
														"listid" : "bdb41041-eb06-474e-ac29-87093386bb14",
														"uniqueid" : "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
														"img_width" : 4288,
														"img_height" : 2848,
														"fix_aspect_ratio" : False,
														"caption_text" : "",
														"alignment" : "Center",
												},
												"server_processed_content" : {
														"image_sources" : [
															{
																	"key" : "imageSource",
																	"value" : "/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG",
															},
														],
														"custom_metadata" : [
															{
																	"key" : "imageSource",
																	"value" : {
																			"siteid" : "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
																			"webid" : "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
																			"listid" : "bdb41041-eb06-474e-ac29-87093386bb14",
																			"uniqueid" : "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
																			"width" : "4288",
																			"height" : "2848",
																	},
															},
														],
												},
										},
								}
							),
						],
					),
				],
			),
		],
	),
)

result = await graph_client.sites.by_site_id('site-id').pages.post(request_body)


```