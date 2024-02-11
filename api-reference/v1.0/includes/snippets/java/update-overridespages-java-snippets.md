---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identity.b2xuserflows.item.languages.item.overridespages.item.value.$valuePutRequestBody valuePutRequestBody = new com.microsoft.graph.identity.b2xuserflows.item.languages.item.overridespages.item.value.$valuePutRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> localizedStrings = new LinkedList<Object>();
 property = new ();
property.setElementType("UxElement");
property.setElementId(null);
property.setStringId("alert_message");
property.setOverride(true);
property.setValue("Are you sure that you want to cancel entering your information?");
localizedStrings.add(property);
additionalData.put("LocalizedStrings", localizedStrings);
valuePutRequestBody.setAdditionalData(additionalData);
graphClient.identity().b2xUserFlows().byB2xIdentityUserFlowId("{b2xIdentityUserFlow-id}").languages().byUserFlowLanguageConfigurationId("{userFlowLanguageConfiguration-id}").overridesPages().byUserFlowLanguagePageId("{userFlowLanguagePage-id}").content().put(valuePutRequestBody);


```