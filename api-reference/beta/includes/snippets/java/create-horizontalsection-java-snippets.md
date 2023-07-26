---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HorizontalSection horizontalSection = new HorizontalSection();
horizontalSection.emphasis = SectionEmphasisType.SOFT;
horizontalSection.layout = HorizontalSectionLayoutType.ONE_COLUMN;
horizontalSection.id = "3";
LinkedList<HorizontalSectionColumn> columnsList = new LinkedList<HorizontalSectionColumn>();
HorizontalSectionColumn columns = new HorizontalSectionColumn();
columns.id = "1";
columns.width = 12;
LinkedList<WebPart> webpartsList = new LinkedList<WebPart>();
WebPart webparts = new WebPart();
webparts.id = "20a69b85-529c-41f3-850e-c93458aa74eb";
webparts.innerHtml = "<p>sample text in text web part</p>";
webpartsList.add(webparts);
WebPartCollectionResponse webPartCollectionResponse = new WebPartCollectionResponse();
webPartCollectionResponse.value = webpartsList;
WebPartCollectionPage webPartCollectionPage = new WebPartCollectionPage(webPartCollectionResponse, null);
columns.webparts = webPartCollectionPage;
columnsList.add(columns);
HorizontalSectionColumnCollectionResponse horizontalSectionColumnCollectionResponse = new HorizontalSectionColumnCollectionResponse();
horizontalSectionColumnCollectionResponse.value = columnsList;
HorizontalSectionColumnCollectionPage horizontalSectionColumnCollectionPage = new HorizontalSectionColumnCollectionPage(horizontalSectionColumnCollectionResponse, null);
horizontalSection.columns = horizontalSectionColumnCollectionPage;

graphClient.sites("{site-id}").pages("{page-id}").canvasLayout().horizontalSections()
	.buildRequest()
	.post(horizontalSection);

```