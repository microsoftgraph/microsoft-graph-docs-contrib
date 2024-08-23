---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AttributeSet attributeSet = new AttributeSet();
attributeSet.setDescription("Attributes for engineering team");
attributeSet.setMaxAttributesPerSet(20);
AttributeSet result = graphClient.directory().attributeSets().byAttributeSetId("{attributeSet-id}").patch(attributeSet);


```