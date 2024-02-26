---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
OnPremisesExtensionAttributes onPremisesExtensionAttributes = new OnPremisesExtensionAttributes();
onPremisesExtensionAttributes.setExtensionAttribute1("skypeId.adeleVance");
onPremisesExtensionAttributes.setExtensionAttribute13(null);
user.setOnPremisesExtensionAttributes(onPremisesExtensionAttributes);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```