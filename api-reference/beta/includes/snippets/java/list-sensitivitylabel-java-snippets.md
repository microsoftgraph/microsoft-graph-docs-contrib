---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SensitivityLabelCollectionPage sensitivityLabels = graphClient.users("bob@contoso.com").security().informationProtection().sensitivityLabels()
	.buildRequest()
	.get();

```