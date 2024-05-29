---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.print.printers.create.CreatePostRequestBody createPostRequestBody = new com.microsoft.graph.print.printers.create.CreatePostRequestBody();
createPostRequestBody.setDisplayName("Test Printer");
createPostRequestBody.setManufacturer("Test Printer Manufacturer");
createPostRequestBody.setModel("Test Printer Model");
createPostRequestBody.setPhysicalDeviceId(null);
createPostRequestBody.setHasPhysicalDevice(false);
PrintCertificateSigningRequest certificateSigningRequest = new PrintCertificateSigningRequest();
certificateSigningRequest.setContent("{content}");
certificateSigningRequest.setTransportKey("{sampleTransportKey}");
createPostRequestBody.setCertificateSigningRequest(certificateSigningRequest);
createPostRequestBody.setConnectorId(null);
graphClient.print().printers().create().post(createPostRequestBody);


```