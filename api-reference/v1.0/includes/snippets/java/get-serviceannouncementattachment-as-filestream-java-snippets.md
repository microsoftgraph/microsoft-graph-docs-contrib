---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.customRequest("/admin/serviceAnnouncement/messages/MC54091/attachments/30356a46-ffad-47e1-acf6-40a99b1538c1/content", InputStream.class)
	.buildRequest()
	.get();

```