---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookDocumentTaskCollectionPage tasks = graphClient.drive().root().workbook().worksheets("7927C77C-AF4A-4CF9-9F4D-73FE887E89EC").tasks()
	.buildRequest()
	.get();

```