---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VerticalSection verticalSection = new VerticalSection();
verticalSection.emphasis = SectionEmphasisType.STRONG;

graphClient.sites("{site-id}").pages("{page-id}").canvasLayout().verticalSection()
	.buildRequest()
	.patch(verticalSection);

```