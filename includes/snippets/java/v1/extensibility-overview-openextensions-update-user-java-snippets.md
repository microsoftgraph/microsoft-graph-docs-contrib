---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Extension extension = new Extension();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("xboxGamerTag", "FierceAdele");
additionalData.put("linkedInProfile", "www.linkedin.com/in/testlinkedinprofile");
extension.setAdditionalData(additionalData);
Extension result = graphClient.users().byUserId("{user-id}").extensions().byExtensionId("{extension-id}").patch(extension);


```