---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.templates.devicetemplates.item.createdevicefromtemplate.CreateDeviceFromTemplatePostRequestBody createDeviceFromTemplatePostRequestBody = new com.microsoft.graph.beta.templates.devicetemplates.item.createdevicefromtemplate.CreateDeviceFromTemplatePostRequestBody();
createDeviceFromTemplatePostRequestBody.setExternalDeviceId("2fa9424e-7ab0-4a22-8c90-2a20d15d8183");
createDeviceFromTemplatePostRequestBody.setOperatingSystemVersion("Ubuntu 18.04");
createDeviceFromTemplatePostRequestBody.setExternalSourceName("unknown");
createDeviceFromTemplatePostRequestBody.setAccountEnabled(false);
LinkedList<String> alternativeNames = new LinkedList<String>();
alternativeNames.add("/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1");
createDeviceFromTemplatePostRequestBody.setAlternativeNames(alternativeNames);
Device result = graphClient.templates().deviceTemplates().byDeviceTemplateId("{deviceTemplate-id}").createDeviceFromTemplate().post(createDeviceFromTemplatePostRequestBody);


```