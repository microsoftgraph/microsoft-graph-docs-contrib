---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.directory.publickeyinfrastructure.certificatebasedauthconfigurations.item.upload.UploadPostRequestBody uploadPostRequestBody = new com.microsoft.graph.beta.directory.publickeyinfrastructure.certificatebasedauthconfigurations.item.upload.UploadPostRequestBody();
uploadPostRequestBody.setUploadUrl("https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b");
uploadPostRequestBody.setSha256FileHash("D7F9....61E6F");
graphClient.directory().publicKeyInfrastructure().certificateBasedAuthConfigurations().byCertificateBasedAuthPkiId("{certificateBasedAuthPki-id}").upload().post(uploadPostRequestBody);


```