---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = graphClient.me().messages("AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===")
	.buildRequest()
	.expand("extensions($filter=id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')")
	.get();

```