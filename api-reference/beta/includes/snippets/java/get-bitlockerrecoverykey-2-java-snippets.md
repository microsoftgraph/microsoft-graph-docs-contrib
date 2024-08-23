---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

BitlockerRecoveryKeyCollectionResponse result = graphClient.informationProtection().bitlocker().recoveryKeys().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'";
	requestConfiguration.headers.add("User-Agent", "Dsreg/10.0");
	requestConfiguration.headers.add("ocp-client-name", "My Friendly Client");
	requestConfiguration.headers.add("ocp-client-version", "1.2");
});


```