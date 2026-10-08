---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.CustomBlockPage customBlockPage = new com.microsoft.graph.beta.models.networkaccess.CustomBlockPage();
customBlockPage.setState(com.microsoft.graph.beta.models.networkaccess.Status.Enabled);
com.microsoft.graph.beta.models.networkaccess.MarkdownBlockMessageConfiguration configuration = new com.microsoft.graph.beta.models.networkaccess.MarkdownBlockMessageConfiguration();
configuration.setOdataType("#microsoft.graph.networkaccess.markdownBlockMessageConfiguration");
configuration.setBody("Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com).");
customBlockPage.setConfiguration(configuration);
com.microsoft.graph.models.networkaccess.CustomBlockPage result = graphClient.networkAccess().settings().customBlockPage().patch(customBlockPage);


```