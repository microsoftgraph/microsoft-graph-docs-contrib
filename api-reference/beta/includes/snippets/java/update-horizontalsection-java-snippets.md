---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HorizontalSection horizontalSection = new HorizontalSection();
horizontalSection.emphasis = SectionEmphasisType.STRONG;
horizontalSection.layout = HorizontalSectionLayoutType.TWO_COLUMNS;

graphClient.sites("{site-id}").pages("{page-id}").canvasLayout().horizontalSections("{horizontalSectionId}")
	.buildRequest()
	.patch(horizontalSection);

```