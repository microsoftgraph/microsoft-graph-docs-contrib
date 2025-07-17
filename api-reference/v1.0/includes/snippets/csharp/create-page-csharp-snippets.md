---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new SitePage
{
	OdataType = "#microsoft.graph.sitePage",
	Name = "test.aspx",
	Title = "test",
	PageLayout = PageLayoutType.Article,
	ShowComments = true,
	ShowRecommendedPages = false,
	TitleArea = new TitleArea
	{
		EnableGradientEffect = true,
		ImageWebUrl = "https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
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
										"data" , new UntypedObject(new Dictionary<string, UntypedNode>
										{
											{
												"dataVersion", new UntypedString("1.9")
											},
											{
												"description", new UntypedString("Show an image on your page")
											},
											{
												"title", new UntypedString("Image")
											},
											{
												"properties", new UntypedObject(new Dictionary<string, UntypedNode>
												{
													{
														"imageSourceType", new UntypedString("2")
													},
													{
														"altText", new UntypedString("")
													},
													{
														"overlayText", new UntypedString("")
													},
													{
														"siteid", new UntypedString("0264cabe-6b92-450a-b162-b0c3d54fe5e8")
													},
													{
														"webid", new UntypedString("f3989670-cd37-4514-8ccb-0f7c2cbe5314")
													},
													{
														"listid", new UntypedString("bdb41041-eb06-474e-ac29-87093386bb14")
													},
													{
														"uniqueid", new UntypedString("d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb")
													},
													{
														"imgWidth", new UntypedString("4288")
													},
													{
														"imgHeight", new UntypedString("2848")
													},
													{
														"fixAspectRatio", new UntypedBoolean(false)
													},
													{
														"captionText", new UntypedString("")
													},
													{
														"alignment", new UntypedString("Center")
													},
												})
											},
											{
												"serverProcessedContent", new UntypedObject(new Dictionary<string, UntypedNode>
												{
													{
														"imageSources", new UntypedArray(new List<UntypedNode>
														{
															new UntypedObject(new Dictionary<string, UntypedNode>
															{
																{
																	"key", new UntypedString("imageSource")
																},
																{
																	"value", new UntypedString("/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG")
																},
															}),
														})
													},
													{
														"customMetadata", new UntypedArray(new List<UntypedNode>
														{
															new UntypedObject(new Dictionary<string, UntypedNode>
															{
																{
																	"key", new UntypedString("imageSource")
																},
																{
																	"value", new UntypedObject(new Dictionary<string, UntypedNode>
																	{
																		{
																			"siteid", new UntypedString("0264cabe-6b92-450a-b162-b0c3d54fe5e8")
																		},
																		{
																			"webid", new UntypedString("f3989670-cd37-4514-8ccb-0f7c2cbe5314")
																		},
																		{
																			"listid", new UntypedString("bdb41041-eb06-474e-ac29-87093386bb14")
																		},
																		{
																			"uniqueid", new UntypedString("d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb")
																		},
																		{
																			"width", new UntypedString("4288")
																		},
																		{
																			"height", new UntypedString("2848")
																		},
																	})
																},
															}),
														})
													},
												})
											},
										})
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].Pages.PostAsync(requestBody);


```