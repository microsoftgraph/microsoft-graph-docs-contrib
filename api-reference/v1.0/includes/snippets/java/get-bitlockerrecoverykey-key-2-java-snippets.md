---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BitlockerRecoveryKey result = graphClient.informationProtection().bitlocker().recoveryKeys().byBitlockerRecoveryKeyId("{bitlockerRecoveryKey-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"key"};
	requestConfiguration.headers.add("User-Agent", "Dsreg/10.0");
	requestConfiguration.headers.add("ocp-client-name", "My Friendly Client");
	requestConfiguration.headers.add("ocp-client-version", "1.2");
});


```