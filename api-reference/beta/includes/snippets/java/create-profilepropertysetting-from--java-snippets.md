---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProfilePropertySetting profilePropertySetting = new ProfilePropertySetting();
profilePropertySetting.setOdataType("#microsoft.graph.profilePropertySetting");
profilePropertySetting.setName("Profile priority config");
LinkedList<String> prioritizedSourceUrls = new LinkedList<String>();
prioritizedSourceUrls.add("https://graph.microsoft.com/beta/admin/people/profileSources(sourceId='contosohr1')");
profilePropertySetting.setPrioritizedSourceUrls(prioritizedSourceUrls);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("displayName", "Profile priority config");
profilePropertySetting.setAdditionalData(additionalData);
ProfilePropertySetting result = graphClient.admin().people().profilePropertySettings().post(profilePropertySetting);


```