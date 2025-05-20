---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody processContentPostRequestBody = new com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody();
ProcessContentRequest contentToProcess = new ProcessContentRequest();
LinkedList<ProcessContentMetadataBase> contentEntries = new LinkedList<ProcessContentMetadataBase>();
ProcessContentMetadataBase processContentMetadataBase = new ProcessContentMetadataBase();
processContentMetadataBase.setOdataType("microsoft.graph.processFileMetadata");
processContentMetadataBase.setIdentifier("91e1ca70-6e5b-4120-abf0-472034ba05c3");
ContentBase content = new ContentBase();
content.setOdataType("microsoft.graph.binaryContent");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("data", "<some-binary-data>");
content.setAdditionalData(additionalData);
processContentMetadataBase.setContent(content);
processContentMetadataBase.setName("Example.docx");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2024-07-23T01:31:40.2020463Z");
processContentMetadataBase.setCreatedDateTime(createdDateTime);
processContentMetadataBase.setCorrelationId("54689");
processContentMetadataBase.setSequenceNumber(1L);
processContentMetadataBase.setLength(17352L);
processContentMetadataBase.setIsTruncated(false);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("updatedDateTime", "2024-09-17T13:45:21.0000000Z");
additionalData1.put("ownerId", "ffe1ca70-6e5b-4120-abf0-472034ba05d4");
 customProperties = new ();
customProperties.setDepartment("Finance");
customProperties.setReviewerName("John Smith");
additionalData1.put("customProperties", customProperties);
processContentMetadataBase.setAdditionalData(additionalData1);
contentEntries.add(processContentMetadataBase);
contentToProcess.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadFile);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("applicationLocation", "bing.com");
activityMetadata.setAdditionalData(additionalData2);
contentToProcess.setActivityMetadata(activityMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("ContosoIsvApplication");
integratedAppMetadata.setVersion("1.2");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
HashMap<String, Object> additionalData3 = new HashMap<String, Object>();
 deviceMetadata = new ();
deviceMetadata.setDeviceType("unmanaged");
 operatingSystemSpecifications = new ();
operatingSystemSpecifications.setOperatingSystemPlatform("windows");
operatingSystemSpecifications.setOperatingSystemVersion("10.0.2.4");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
additionalData3.put("deviceMetadata", deviceMetadata);
contentToProcess.setAdditionalData(additionalData3);
processContentPostRequestBody.setContentToProcess(contentToProcess);
var result = graphClient.me().dataSecurityAndGovernance().processContent().post(processContentPostRequestBody);


```