---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WindowsSettingCollectionResponse result = graphClient.me().settings().windows().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'";
});


```