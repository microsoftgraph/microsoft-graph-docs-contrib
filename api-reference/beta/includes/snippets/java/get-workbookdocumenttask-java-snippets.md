---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookDocumentTask workbookDocumentTask = graphClient.drive().root().workbook().worksheets("D5667D8C-B814-4748-B942-9C41BCC9BBB1").tasks("47B4663E-612F-4E06-B2E6-E8EBE819CBB6")
	.buildRequest()
	.get();

```