---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContentActivity contentActivity = new ContentActivity();
ProcessContentRequest contentMetadata = new ProcessContentRequest();
LinkedList<ProcessContentMetadataBase> contentEntries = new LinkedList<ProcessContentMetadataBase>();
ProcessConversationMetadata processContentMetadataBase = new ProcessConversationMetadata();
processContentMetadataBase.setOdataType("microsoft.graph.processConversationMetadata");
processContentMetadataBase.setIdentifier("68fa951a-898a-4427-8e9e-6f8c05e9fe2b");
processContentMetadataBase.setName("API Explorer message");
processContentMetadataBase.setCorrelationId("559a2343-7aa2-4912-93fe-72c47b2706ed");
processContentMetadataBase.setIsTruncated(false);
OffsetDateTime createdDateTime = OffsetDateTime.parse("2025-04-28T20:17:55");
processContentMetadataBase.setCreatedDateTime(createdDateTime);
OffsetDateTime modifiedDateTime = OffsetDateTime.parse("2025-04-28T20:17:55");
processContentMetadataBase.setModifiedDateTime(modifiedDateTime);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("sequenceNo", 0);
processContentMetadataBase.setAdditionalData(additionalData);
contentEntries.add(processContentMetadataBase);
contentMetadata.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadText);
contentMetadata.setActivityMetadata(activityMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("API Explorer");
integratedAppMetadata.setVersion("0.1");
contentMetadata.setIntegratedAppMetadata(integratedAppMetadata);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 deviceMetadata = new ();
deviceMetadata.setDeviceType("unmanaged");
 operatingSystemSpecifications = new ();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows 11");
operatingSystemSpecifications.setOperatingSystemVersion("10.0.26100.0");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
additionalData1.put("deviceMetadata", deviceMetadata);
additionalData1.put("userId", "7c2f8f10-cba8-4a8d-9449-db4b76d17390");
additionalData1.put("scopeIdentifier", "0");
contentMetadata.setAdditionalData(additionalData1);
contentActivity.setContentMetadata(contentMetadata);
ContentActivity result = graphClient.me().dataSecurityAndGovernance().activities().contentActivities().post(contentActivity);


```