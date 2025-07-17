---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody processContentPostRequestBody = new com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody();
ProcessContentRequest contentToProcess = new ProcessContentRequest();
LinkedList<ProcessContentMetadataBase> contentEntries = new LinkedList<ProcessContentMetadataBase>();
ProcessFileMetadata processContentMetadataBase = new ProcessFileMetadata();
processContentMetadataBase.setOdataType("#microsoft.graph.processFileMetadata");
processContentMetadataBase.setIdentifier("f7af180f-dc2e-467c-9719-757e1c61eabf");
TextContent content = new TextContent();
content.setOdataType("#microsoft.graph.textContent");
content.setData("Base64 encoded content");
processContentMetadataBase.setContent(content);
processContentMetadataBase.setName("Test File.docx");
processContentMetadataBase.setCorrelationId("d63eafd2-e3a9-4c1a-b726-a2e9b9d95822");
OffsetDateTime createdDateTime = OffsetDateTime.parse("2024-07-23T01:31:40.2020463Z");
processContentMetadataBase.setCreatedDateTime(createdDateTime);
OffsetDateTime modifiedDateTime = OffsetDateTime.parse("2024-09-17T13:45:21.0000000Z");
processContentMetadataBase.setModifiedDateTime(modifiedDateTime);
processContentMetadataBase.setCorrelationId("9d84223c-521c-42f4-8f35-3cdeabe515d3");
processContentMetadataBase.setLength(17352L);
processContentMetadataBase.setIsTruncated(false);
processContentMetadataBase.setOwnerId("ffe1ca70-6e5b-4120-abf0-472034ba05d4");
CustomMetadataDictionary customProperties = new CustomMetadataDictionary();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("Department", "Finance");
additionalData.put("ReviewerName", "John Smith");
customProperties.setAdditionalData(additionalData);
processContentMetadataBase.setCustomProperties(customProperties);
contentEntries.add(processContentMetadataBase);
contentToProcess.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadFile);
contentToProcess.setActivityMetadata(activityMetadata);
DeviceMetadata deviceMetadata = new DeviceMetadata();
deviceMetadata.setDeviceType("unmanaged");
OperatingSystemSpecifications operatingSystemSpecifications = new OperatingSystemSpecifications();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows");
operatingSystemSpecifications.setOperatingSystemVersion("11.1");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
contentToProcess.setDeviceMetadata(deviceMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("Network Proxy App");
integratedAppMetadata.setVersion("1.0.0");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
ProtectedApplicationMetadata protectedAppMetadata = new ProtectedApplicationMetadata();
protectedAppMetadata.setName("My App");
protectedAppMetadata.setVersion("0.1");
PolicyLocationUrl applicationLocation = new PolicyLocationUrl();
applicationLocation.setOdataType("#microsoft.graph.policyLocationUrl");
applicationLocation.setValue("https://gemini.google.com");
protectedAppMetadata.setApplicationLocation(applicationLocation);
contentToProcess.setProtectedAppMetadata(protectedAppMetadata);
processContentPostRequestBody.setContentToProcess(contentToProcess);
var result = graphClient.me().dataSecurityAndGovernance().processContent().post(processContentPostRequestBody);


```