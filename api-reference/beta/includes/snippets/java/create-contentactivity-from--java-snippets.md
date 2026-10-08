---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContentActivity contentActivity = new ContentActivity();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 contentToProcess = new ();
LinkedList<Object> contentEntries = new LinkedList<Object>();
 property = new ();
property.setOdataType("microsoft.graph.processConversationMetadata");
property.setIdentifier("07785517-9081-4fe7-a9dc-85bcdf5e9075");
property.setName("PC Purview API Explorer message");
property.setCorrelationId("d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d");
property.setSequenceNumber(0);
property.setIsTruncated(false);
property.setCreatedDateTime("2025-05-27T17:23:20");
property.setModifiedDateTime("2025-05-27T17:23:20");
LinkedList<Object> agents = new LinkedList<Object>();
 property1 = new ();
property1.setIdentifier("b262a092-6a2b-4682-9c7f-00baf80dbd84");
property1.setName("Copilot Agent");
property1.setVersion("1.2");
property1.setBlueprintId("c262a092-6a2b-4682-9c7f-00baf80dbd94");
agents.add(property1);
property.setAgents(agents);
LinkedList<Object> plugins = new LinkedList<Object>();
 property2 = new ();
property2.setIdentifier("f1a2b3c4-d5e6-7890-abcd-ef1234567890");
property2.setName("Microsoft Purview Data Scanner");
property2.setVersion("1.1");
plugins.add(property2);
property.setPlugins(plugins);
LinkedList<Object> accessedResourcesV2 = new LinkedList<Object>();
 property3 = new ();
property3.setIdentifier("3f2d6e5b-98d4-4f2a-9a61-45c0a8b7d123");
property3.setName("Report.xlsx");
property3.setUrl("https://contoso.sharepoint.com/sites/finance");
property3.setLabelId("a7b4f8c9-1e2d-4f45-89b1-23456789abcd");
property3.setAccessType("read");
property3.setStatus("success");
property3.setIsCrossPromptInjectionDetected(false);
accessedResourcesV2.add(property3);
property.setAccessedResourcesV2(accessedResourcesV2);
contentEntries.add(property);
contentToProcess.setContentEntries(contentEntries);
 activityMetadata = new ();
activityMetadata.setActivity("uploadText");
contentToProcess.setActivityMetadata(activityMetadata);
 deviceMetadata = new ();
 operatingSystemSpecifications = new ();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows 11");
operatingSystemSpecifications.setOperatingSystemVersion("10.0.26100.0");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
deviceMetadata.setIpAddress("127.0.0.1");
contentToProcess.setDeviceMetadata(deviceMetadata);
 protectedAppMetadata = new ();
protectedAppMetadata.setName("PC Purview API Explorer");
protectedAppMetadata.setVersion("0.2");
 applicationLocation = new ();
applicationLocation.setOdataType("microsoft.graph.policyLocationApplication");
applicationLocation.setValue("83ef208a-0396-4893-9d4f-d36efbffc8bd");
protectedAppMetadata.setApplicationLocation(applicationLocation);
contentToProcess.setProtectedAppMetadata(protectedAppMetadata);
 integratedAppMetadata = new ();
integratedAppMetadata.setName("PC Purview API Explorer");
integratedAppMetadata.setVersion("0.2");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
additionalData.put("contentToProcess", contentToProcess);
contentActivity.setAdditionalData(additionalData);
ContentActivity result = graphClient.me().dataSecurityAndGovernance().activities().contentActivities().post(contentActivity);


```