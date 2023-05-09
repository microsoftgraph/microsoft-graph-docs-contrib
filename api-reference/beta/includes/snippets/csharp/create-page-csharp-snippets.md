---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SitePage
{
	Name = "test.aspx",
	Title = "test",
	PageLayout = PageLayoutType.Article,
	ShowComments = true,
	ShowRecommendedPages = false,
	TitleArea = new TitleArea
	{
		EnableGradientEffect = true,
		ImageWebUrl = "/_LAYOUTS/IMAGES/VISUALTEMPLATETITLEIMAGE.JPG",
		Layout = TitleAreaLayoutType.ColorBlock,
		ShowAuthor = true,
		ShowPublishedDate = false,
		ShowTextBlockAboveTitle = false,
		TextAboveTitle = "TEXT ABOVE TITLE",
		TextAlignment = TitleAreaTextAlignmentType.Left,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"imageSourceType" , 2
			},
			{
				"title" , "sample1"
			},
		},
	},
	CanvasLayout = new CanvasLayout
	{
		HorizontalSections = new List<HorizontalSection>
		{
			new HorizontalSection
			{
				Layout = HorizontalSectionLayoutType.OneThirdRightColumn,
				Id = "1",
				Emphasis = SectionEmphasisType.None,
				Columns = new List<HorizontalSectionColumn>
				{
					new HorizontalSectionColumn
					{
						Id = "1",
						Width = 8,
						Webparts = new List<WebPart>
						{
							new WebPart
							{
								Id = "6f9230af-2a98-4952-b205-9ede4f9ef548",
								AdditionalData = new Dictionary<string, object>
								{
									{
										"innerHtml" , "<p><b>Hello!</b></p>"
									},
								},
							},
						},
					},
					new HorizontalSectionColumn
					{
						Id = "2",
						Width = 4,
						Webparts = new List<WebPart>
						{
							new WebPart
							{
								Id = "73d07dde-3474-4545-badb-f28ba239e0e1",
								AdditionalData = new Dictionary<string, object>
								{
									{
										"webPartType" , "d1d91016-032f-456d-98a4-721247c305e8"
									},
									{
										"data" , new 
										{
											DataVersion = "1.9",
											Description = "Show an image on your page",
											Title = "Image",
											Properties = new 
											{
												ImageSourceType = 2,
												AltText = "",
												OverlayText = "",
												Siteid = "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
												Webid = "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
												Listid = "bdb41041-eb06-474e-ac29-87093386bb14",
												Uniqueid = "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
												ImgWidth = 4288,
												ImgHeight = 2848,
												FixAspectRatio = false,
												CaptionText = "",
												Alignment = "Center",
											},
											ServerProcessedContent = new 
											{
												ImageSources = new List<>
												{
													new 
													{
														Key = "imageSource",
														Value = "/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG",
													},
												},
												CustomMetadata = new List<>
												{
													new 
													{
														Key = "imageSource",
														Value = new 
														{
															Siteid = "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
															Webid = "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
															Listid = "bdb41041-eb06-474e-ac29-87093386bb14",
															Uniqueid = "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
															Width = "4288",
															Height = "2848",
														},
													},
												},
											},
										}
									},
								},
							},
						},
					},
				},
			},
		},
	},
};
var result = await graphClient.Sites["{site-id}"].Pages.PostAsync(requestBody);


```