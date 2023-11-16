---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VerticalSection verticalSection = new VerticalSection();
verticalSection.emphasis = SectionEmphasisType.SOFT;
LinkedList<WebPart> webpartsList = new LinkedList<WebPart>();
WebPart webparts = new WebPart();
webparts.id = "20a69b85-529c-41f3-850e-c93458aa74eb";
webparts.innerHtml = "<p>sample text in text web part</p>";
webpartsList.add(webparts);
WebPartCollectionResponse webPartCollectionResponse = new WebPartCollectionResponse();
webPartCollectionResponse.value = webpartsList;
WebPartCollectionPage webPartCollectionPage = new WebPartCollectionPage(webPartCollectionResponse, null);
verticalSection.webparts = webPartCollectionPage;

graphClient.sites("{site-id}").pages("{page-id}").canvasLayout().verticalSection()
	.buildRequest()
	.put(verticalSection);

```