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