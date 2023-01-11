---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationTemplateCollectionPage applicationTemplates = graphClient.applicationTemplates()
	.buildRequest()
	.filter("displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'")
	.get();

```