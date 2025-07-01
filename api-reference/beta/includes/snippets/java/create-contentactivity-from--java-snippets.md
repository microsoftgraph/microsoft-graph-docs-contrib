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
processContentMetadataBase.setIdentifier("d6ab5054-e111-45c3-9fba-9f2a59c9bbf8");
processContentMetadataBase.setName("CA Purview API Explorer message");
processContentMetadataBase.setCorrelationId("edfb7f88-b963-4ef2-8b30-5cb90f80e01e");
processContentMetadataBase.setSequenceNumber(0L);
processContentMetadataBase.setIsTruncated(false);
OffsetDateTime createdDateTime = OffsetDateTime.parse("2025-05-28T20:20:37");
processContentMetadataBase.setCreatedDateTime(createdDateTime);
OffsetDateTime modifiedDateTime = OffsetDateTime.parse("2025-05-28T20:20:37");
processContentMetadataBase.setModifiedDateTime(modifiedDateTime);
contentEntries.add(processContentMetadataBase);
contentMetadata.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.DownloadText);
contentMetadata.setActivityMetadata(activityMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("CA Purview API Explorer");
integratedAppMetadata.setVersion("0.1");
contentMetadata.setIntegratedAppMetadata(integratedAppMetadata);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 deviceMetadata = new ();
 operatingSystemSpecifications = new ();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows 11");
operatingSystemSpecifications.setOperatingSystemVersion("10.0.26100.0");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
additionalData.put("deviceMetadata", deviceMetadata);
additionalData.put("userId", "7c497f10-cba8-4a8d-9449-db4b76d1ef80");
additionalData.put("scopeIdentifier", "0");
contentMetadata.setAdditionalData(additionalData);
contentActivity.setContentMetadata(contentMetadata);
ContentActivity result = graphClient.me().dataSecurityAndGovernance().activities().contentActivities().post(contentActivity);


```