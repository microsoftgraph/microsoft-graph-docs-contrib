---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
OnPremisesExtensionAttributes onPremisesExtensionAttributes = new OnPremisesExtensionAttributes();
onPremisesExtensionAttributes.extensionAttribute1 = "skypeId.adeleVance";
onPremisesExtensionAttributes.extensionAttribute13 = null;
user.onPremisesExtensionAttributes = onPremisesExtensionAttributes;

graphClient.users("071cc716-8147-4397-a5ba-b2105951cc0b")
	.buildRequest()
	.patch(user);

```