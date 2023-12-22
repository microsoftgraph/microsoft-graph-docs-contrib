---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$search", "\"subject/commonName:microsoft.com\""));

SslCertificateCollectionPage sslCertificates = graphClient.security().threatIntelligence().sslCertificates()
	.buildRequest( requestOptions )
	.top(1)
	.get();

```