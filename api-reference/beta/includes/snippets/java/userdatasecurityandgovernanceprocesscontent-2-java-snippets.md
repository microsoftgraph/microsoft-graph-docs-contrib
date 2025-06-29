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
processContentMetadataBase.setOdataType("#microsoft.graph.processConversationMetadata");
processContentMetadataBase.setIdentifier("f7af180f-dc2e-467c-9719-757e1c61eabf");
TextContent content = new TextContent();
content.setOdataType("#microsoft.graph.textContent");
content.setData("some data");
processContentMetadataBase.setContent(content);
processContentMetadataBase.setName("Some name");
processContentMetadataBase.setCorrelationId("d63eafd2-e3a9-4c1a-b726-a2e9b9d95811");
processContentMetadataBase.setSequenceNumber(0L);
contentEntries.add(processContentMetadataBase);
contentToProcess.setContentEntries(contentEntries);
ActivityMetadata activityMetadata = new ActivityMetadata();
activityMetadata.setActivity(UserActivityType.UploadText);
contentToProcess.setActivityMetadata(activityMetadata);
IntegratedApplicationMetadata integratedAppMetadata = new IntegratedApplicationMetadata();
integratedAppMetadata.setName("Some integrated app name");
integratedAppMetadata.setVersion("1.0.0");
contentToProcess.setIntegratedAppMetadata(integratedAppMetadata);
ProtectedApplicationMetadata protectedAppMetadata = new ProtectedApplicationMetadata();
PolicyLocationUrl applicationLocation = new PolicyLocationUrl();
applicationLocation.setOdataType("#microsoft.graph.policyLocationUrl");
applicationLocation.setValue("https://gemini.google.com");
protectedAppMetadata.setApplicationLocation(applicationLocation);
contentToProcess.setProtectedAppMetadata(protectedAppMetadata);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 deviceMetadata = new ();
deviceMetadata.setDeviceType("Unmanaged");
deviceMetadata.setIpAddress(null);
 operatingSystemSpecifications = new ();
operatingSystemSpecifications.setOperatingSystemPlatform("Windows");
operatingSystemSpecifications.setOperatingSystemVersion("11.1");
deviceMetadata.setOperatingSystemSpecifications(operatingSystemSpecifications);
additionalData.put("deviceMetadata", deviceMetadata);
contentToProcess.setAdditionalData(additionalData);
processContentPostRequestBody.setContentToProcess(contentToProcess);
var result = graphClient.me().dataSecurityAndGovernance().processContent().post(processContentPostRequestBody);


```