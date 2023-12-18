---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Accept-Language", "fr-FR"));

AgreementFile agreementFile = graphClient.agreements("94410bbf-3d3e-4683-8149-f034e55c39dd").file()
	.buildRequest( requestOptions )
	.get();

```