---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("#microsoft.graph.openTypeExtension");
extension.setId("com.contoso.socialSettings");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@odata.context", "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity");
additionalData.put("xboxGamerTag", "FierceAdele");
additionalData.put("linkedInProfile", "www.linkedin.com/in/testlinkedinprofile");
extension.setAdditionalData(additionalData);
Extension result = graphClient.users().byUserId("{user-id}").extensions().byExtensionId("{extension-id}").get(extension);


```