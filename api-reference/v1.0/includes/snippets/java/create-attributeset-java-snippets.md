---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AttributeSet attributeSet = new AttributeSet();
attributeSet.id = "Engineering";
attributeSet.description = "Attributes for engineering team";
attributeSet.maxAttributesPerSet = 25;

graphClient.directory().attributeSets()
	.buildRequest()
	.post(attributeSet);

```