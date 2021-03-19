---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

KeyCredential keyCredential = new KeyCredential();
keyCredential.type = "AsymmetricX509Cert";
keyCredential.usage = "Verify";
keyCredential.key = Base64.getDecoder().decode("MIIDYDCCAki...");



String proof = "eyJ0eXAiOiJ...";

graphClient.applications("{id}")
	.addKey(keyCredential,passwordCredential,proof)
	.buildRequest()
	.post();

```