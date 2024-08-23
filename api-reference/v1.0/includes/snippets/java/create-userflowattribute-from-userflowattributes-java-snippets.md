---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityUserFlowAttribute identityUserFlowAttribute = new IdentityUserFlowAttribute();
identityUserFlowAttribute.setDisplayName("Hobby");
identityUserFlowAttribute.setDescription("Your hobby");
identityUserFlowAttribute.setDataType(IdentityUserFlowAttributeDataType.String);
IdentityUserFlowAttribute result = graphClient.identity().userFlowAttributes().post(identityUserFlowAttribute);


```