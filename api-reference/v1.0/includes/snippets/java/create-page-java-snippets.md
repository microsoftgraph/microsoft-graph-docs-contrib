---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SitePage baseSitePage = new SitePage();
baseSitePage.setOdataType("#microsoft.graph.sitePage");
baseSitePage.setName("test.aspx");
baseSitePage.setTitle("test");
baseSitePage.setPageLayout(PageLayoutType.Article);
baseSitePage.setShowComments(true);
baseSitePage.setShowRecommendedPages(false);
TitleArea titleArea = new TitleArea();
titleArea.setEnableGradientEffect(true);
titleArea.setImageWebUrl("https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg");
titleArea.setLayout(TitleAreaLayoutType.ColorBlock);
titleArea.setShowAuthor(true);
titleArea.setShowPublishedDate(false);
titleArea.setShowTextBlockAboveTitle(false);
titleArea.setTextAboveTitle("TEXT ABOVE TITLE");
titleArea.setTextAlignment(TitleAreaTextAlignmentType.Left);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("imageSourceType", 2);
additionalData.put("title", "sample1");
titleArea.setAdditionalData(additionalData);
baseSitePage.setTitleArea(titleArea);
CanvasLayout canvasLayout = new CanvasLayout();
LinkedList<HorizontalSection> horizontalSections = new LinkedList<HorizontalSection>();
HorizontalSection horizontalSection = new HorizontalSection();
horizontalSection.setLayout(HorizontalSectionLayoutType.OneThirdRightColumn);
horizontalSection.setId("1");
horizontalSection.setEmphasis(SectionEmphasisType.None);
LinkedList<HorizontalSectionColumn> columns = new LinkedList<HorizontalSectionColumn>();
HorizontalSectionColumn horizontalSectionColumn = new HorizontalSectionColumn();
horizontalSectionColumn.setId("1");
horizontalSectionColumn.setWidth(8);
LinkedList<WebPart> webparts = new LinkedList<WebPart>();
WebPart webPart = new WebPart();
webPart.setId("6f9230af-2a98-4952-b205-9ede4f9ef548");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("innerHtml", "<p><b>Hello!</b></p>");
webPart.setAdditionalData(additionalData1);
webparts.add(webPart);
horizontalSectionColumn.setWebparts(webparts);
columns.add(horizontalSectionColumn);
HorizontalSectionColumn horizontalSectionColumn1 = new HorizontalSectionColumn();
horizontalSectionColumn1.setId("2");
horizontalSectionColumn1.setWidth(4);
LinkedList<WebPart> webparts1 = new LinkedList<WebPart>();
WebPart webPart1 = new WebPart();
webPart1.setId("73d07dde-3474-4545-badb-f28ba239e0e1");
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("webPartType", "d1d91016-032f-456d-98a4-721247c305e8");
 data = new ();
data.setDataVersion("1.9");
data.setDescription("Show an image on your page");
data.setTitle("Image");
 properties = new ();
properties.setImageSourceType(2);
properties.setAltText("");
properties.setOverlayText("");
properties.setSiteid("0264cabe-6b92-450a-b162-b0c3d54fe5e8");
properties.setWebid("f3989670-cd37-4514-8ccb-0f7c2cbe5314");
properties.setListid("bdb41041-eb06-474e-ac29-87093386bb14");
properties.setUniqueid("d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb");
properties.setImgWidth(4288);
properties.setImgHeight(2848);
properties.setFixAspectRatio(false);
properties.setCaptionText("");
properties.setAlignment("Center");
data.setProperties(properties);
 serverProcessedContent = new ();
LinkedList<Object> imageSources = new LinkedList<Object>();
 property = new ();
property.setKey("imageSource");
property.setValue("/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG");
imageSources.add(property);
serverProcessedContent.setImageSources(imageSources);
LinkedList<Object> customMetadata = new LinkedList<Object>();
 property1 = new ();
property1.setKey("imageSource");
 value1 = new ();
value1.setSiteid("0264cabe-6b92-450a-b162-b0c3d54fe5e8");
value1.setWebid("f3989670-cd37-4514-8ccb-0f7c2cbe5314");
value1.setListid("bdb41041-eb06-474e-ac29-87093386bb14");
value1.setUniqueid("d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb");
value1.setWidth("4288");
value1.setHeight("2848");
property1.setValue(value1);
customMetadata.add(property1);
serverProcessedContent.setCustomMetadata(customMetadata);
data.setServerProcessedContent(serverProcessedContent);
additionalData2.put("data", data);
webPart1.setAdditionalData(additionalData2);
webparts1.add(webPart1);
horizontalSectionColumn1.setWebparts(webparts1);
columns.add(horizontalSectionColumn1);
horizontalSection.setColumns(columns);
horizontalSections.add(horizontalSection);
canvasLayout.setHorizontalSections(horizontalSections);
baseSitePage.setCanvasLayout(canvasLayout);
BaseSitePage result = graphClient.sites().bySiteId("{site-id}").pages().post(baseSitePage);


```