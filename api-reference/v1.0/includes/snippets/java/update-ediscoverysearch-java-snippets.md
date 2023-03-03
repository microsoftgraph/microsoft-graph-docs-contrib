---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EdiscoverySearch ediscoverySearch = new EdiscoverySearch();
ediscoverySearch.displayName = "Teams search";

graphClient.security().cases().ediscoveryCases("{ediscoveryCaseId}").searches("{ediscoverySearchId}")
	.buildRequest()
	.patch(ediscoverySearch);

```