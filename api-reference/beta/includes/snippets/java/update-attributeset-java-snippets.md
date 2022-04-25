---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttributeSet attributeSet = new AttributeSet();
attributeSet.description = "Attributes for engineering team";
attributeSet.maxAttributesPerSet = 20;

graphClient.directory().attributeSets("Engineering")
	.buildRequest()
	.patch(attributeSet);

```