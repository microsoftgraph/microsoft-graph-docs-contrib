---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateBasedApplicationConfiguration certificateBasedApplicationConfiguration = new CertificateBasedApplicationConfiguration();
certificateBasedApplicationConfiguration.setOdataType("#microsoft.graph.certificateBasedApplicationConfiguration");
certificateBasedApplicationConfiguration.setDisplayName("New display name");
certificateBasedApplicationConfiguration.setDescription("New description text");
CertificateBasedApplicationConfiguration result = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations().byCertificateBasedApplicationConfigurationId("{certificateBasedApplicationConfiguration-id}").patch(certificateBasedApplicationConfiguration);


```