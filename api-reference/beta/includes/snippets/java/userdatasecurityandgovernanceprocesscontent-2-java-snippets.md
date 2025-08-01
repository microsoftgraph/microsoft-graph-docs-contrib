---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody processContentPostRequestBody = new com.microsoft.graph.users.item.datasecurityandgovernance.processcontent.ProcessContentPostRequestBody();
ProcessContentRequest contentToProcess = new ProcessContentRequest();
LinkedList<ProcessContentMetadataBase> contentEntries = new LinkedList<ProcessContentMetadataBase>();
ProcessConversationMetadata processContentMetadataBase = new ProcessConversationMetadata();
processContentMetadataBase.setOdataType("#microsoft.graph.processConversationMetadata");
processContentMetadataBase.setIdentifier("f7af180f-dc2e-467c-9719-757e1c61eabf");
TextContent content = new TextContent();
content.setOdataType("#microsoft.graph.textContent");
content.setData("some data");
processContentMetadataBase.setContent(content);
processContentMetadataBase.setCorrelationId("d63eafd2-e3a9-4c1a-b726-a2e9b9d95811");
processContentMetadataBase.setSequenceNumber(0L);
processContentMetadataBase.setName("Test Content");
contentEntries.add(processContentMetadataBase);
contentToProcess.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadText);
contentToProcess.setActivityMetadata(activityMetadata);
DeviceMetadata deviceMetadata = new DeviceMetadata();
deviceMetadata.setDeviceType("unmanaged");
deviceMetadata.setIpAddress(null);
OperatingSystemSpecifications operatingSystemSpecifications = new OperatingSystemSpecifications();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows");
operatingSystemSpecifications.setOperatingSystemVersion("11.1");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
contentToProcess.setDeviceMetadata(deviceMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("My Entra App");
integratedAppMetadata.setVersion("0.1");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
ProtectedApplicationMetadata protectedAppMetadata = new ProtectedApplicationMetadata();
protectedAppMetadata.setName("My Entra App");
protectedAppMetadata.setVersion("0.1");
PolicyLocationUrl applicationLocation = new PolicyLocationUrl();
applicationLocation.setOdataType("#microsoft.graph.policyLocationUrl");
applicationLocation.setValue("https://gemini.google.com");
protectedAppMetadata.setApplicationLocation(applicationLocation);
contentToProcess.setProtectedAppMetadata(protectedAppMetadata);
processContentPostRequestBody.setContentToProcess(contentToProcess);
var result = graphClient.users().byUserId("{user-id}").dataSecurityAndGovernance().processContent().post(processContentPostRequestBody);


```