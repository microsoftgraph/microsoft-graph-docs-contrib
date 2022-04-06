---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.sites("microsoft.sharepoint.com,b9b0bc03-cbc4-40d2-aba9-2c9dd9821ddf,6a742cee-9216-4db5-8046-13a595684e74").termStore().sets("584b2331-f5c9-4b45-a5ec-d3cb9af67006").terms("a929ae3c-a11f-447f-9835-f09b461cd59a")
	.buildRequest()
	.delete();

```