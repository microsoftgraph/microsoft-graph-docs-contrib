---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EnhancedPersonalizationSetting enhancedPersonalizationSetting = new EnhancedPersonalizationSetting();
enhancedPersonalizationSetting.setIsEnabledInOrganization(true);
enhancedPersonalizationSetting.setDisabledForGroup("edbfe4fb-ec70-4300-928f-dbb2ae86c981");
EnhancedPersonalizationSetting result = graphClient.copilot().settings().people().enhancedPersonalization().patch(enhancedPersonalizationSetting);


```