---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UxSetting uxSetting = new UxSetting();
uxSetting.setRestrictNonAdminAccess(NonAdminSetting.True);
UxSetting result = graphClient.admin().entra().uxSetting().patch(uxSetting);


```