---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.b2cuserflows.item.languages.item.overridespages.item.value.$valuePutRequestBody valuePutRequestBody = new com.microsoft.graph.beta.identity.b2cuserflows.item.languages.item.overridespages.item.value.$valuePutRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> localizedStrings = new LinkedList<Object>();
 property = new ();
property.setElementType("UxElement");
property.setElementId(null);
property.setStringId("alert_message");
property.setOverride(true);
property.setValue("Are you sure that you want to cancel your selection?");
localizedStrings.add(property);
additionalData.put("LocalizedStrings", localizedStrings);
valuePutRequestBody.setAdditionalData(additionalData);
graphClient.identity().b2cUserFlows().byB2cIdentityUserFlowId("{b2cIdentityUserFlow-id}").languages().byUserFlowLanguageConfigurationId("{userFlowLanguageConfiguration-id}").overridesPages().byUserFlowLanguagePageId("{userFlowLanguagePage-id}").content().put(valuePutRequestBody);


```