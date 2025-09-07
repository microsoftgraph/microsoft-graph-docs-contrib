---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody processContentPostRequestBody = new com.microsoft.graph.beta.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody();
ProcessContentRequest contentToProcess = new ProcessContentRequest();
LinkedList<ProcessContentMetadataBase> contentEntries = new LinkedList<ProcessContentMetadataBase>();
ProcessConversationMetadata processContentMetadataBase = new ProcessConversationMetadata();
processContentMetadataBase.setOdataType("microsoft.graph.processConversationMetadata");
processContentMetadataBase.setIdentifier("07785517-9081-4fe7-a9dc-85bcdf5e9075");
TextContent content = new TextContent();
content.setOdataType("microsoft.graph.textContent");
content.setData("Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052");
processContentMetadataBase.setContent(content);
processContentMetadataBase.setName("PC Purview API Explorer message");
processContentMetadataBase.setCorrelationId("d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d");
processContentMetadataBase.setSequenceNumber(0L);
processContentMetadataBase.setIsTruncated(false);
OffsetDateTime createdDateTime = OffsetDateTime.parse("2025-05-27T17:23:20");
processContentMetadataBase.setCreatedDateTime(createdDateTime);
OffsetDateTime modifiedDateTime = OffsetDateTime.parse("2025-05-27T17:23:20");
processContentMetadataBase.setModifiedDateTime(modifiedDateTime);
contentEntries.add(processContentMetadataBase);
contentToProcess.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadText);
contentToProcess.setActivityMetadata(activityMetadata);
DeviceMetadata deviceMetadata = new DeviceMetadata();
deviceMetadata.setDeviceType("Unmanaged");
OperatingSystemSpecifications operatingSystemSpecifications = new OperatingSystemSpecifications();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows 11");
operatingSystemSpecifications.setOperatingSystemVersion("10.0.26100.0");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
deviceMetadata.setIpAddress("127.0.0.1");
contentToProcess.setDeviceMetadata(deviceMetadata);
ProtectedApplicationMetadata protectedAppMetadata = new ProtectedApplicationMetadata();
protectedAppMetadata.setName("PC Purview API Explorer");
protectedAppMetadata.setVersion("0.2");
PolicyLocationApplication applicationLocation = new PolicyLocationApplication();
applicationLocation.setOdataType("microsoft.graph.policyLocationApplication");
applicationLocation.setValue("83ef208a-0396-4893-9d4f-d36efbffc8bd");
protectedAppMetadata.setApplicationLocation(applicationLocation);
contentToProcess.setProtectedAppMetadata(protectedAppMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("PC Purview API Explorer");
integratedAppMetadata.setVersion("0.2");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
processContentPostRequestBody.setContentToProcess(contentToProcess);
var result = graphClient.me().dataSecurityAndGovernance().processContent().post(processContentPostRequestBody);


```