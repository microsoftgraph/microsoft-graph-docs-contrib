---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String string = graphClient.security().cases().ediscoveryCases("58399dff-cebe-478f-b1af-d3227f1fd645").operations("c5ae226f457547a582ef0eb6dbfaee25").microsoft.graph.security.ediscoveryExportOperation()
	.getDownloadUrl()
	.buildRequest()
	.get();

```