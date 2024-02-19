---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomAppScope customAppScope = new CustomAppScope();
customAppScope.setType("RecipientScope");
customAppScope.setDisplayName("Protected Exec Users");
CustomAppScopeAttributesDictionary customAttributes = new CustomAppScopeAttributesDictionary();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("Exclusive", false);
additionalData.put("RecipientFilter", "Title -like 'VP*'");
customAttributes.setAdditionalData(additionalData);
customAppScope.setCustomAttributes(customAttributes);
CustomAppScope result = graphClient.roleManagement().exchange().customAppScopes().post(customAppScope);


```