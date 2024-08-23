---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
CustomSecurityAttributeValue customSecurityAttributes = new CustomSecurityAttributeValue();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 engineering = new ();
engineering.setOdataType("#Microsoft.DirectoryServices.CustomSecurityAttributeValue");
engineering.setCertification(false);
additionalData.put("Engineering", engineering);
customSecurityAttributes.setAdditionalData(additionalData);
user.setCustomSecurityAttributes(customSecurityAttributes);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```