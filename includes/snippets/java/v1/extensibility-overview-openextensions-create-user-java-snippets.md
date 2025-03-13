---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("#microsoft.graph.openTypeExtension");
extension.setExtensionName("com.contoso.socialSettings");
extension.setId("com.contoso.socialSettings");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("skypeId", "skypeId.AdeleV");
additionalData.put("linkedInProfile", "www.linkedin.com/in/testlinkedinprofile");
additionalData.put("xboxGamerTag", "AwesomeAdele");
extension.setAdditionalData(additionalData);
Extension result = graphClient.users().byUserId("{user-id}").extensions().post(extension);


```