---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedGroupSource unifiedGroupSource = new UnifiedGroupSource();
Group group = new Group();
group.mail = "SecretGroup@contoso.com";
unifiedGroupSource.group = group;
unifiedGroupSource.includedSources = EnumSet.of(SourceType.MAILBOX,SourceType.SITE);

graphClient.compliance().ediscovery().cases("15d80234-8320-4f10-96d0-d98d53ffdfc9").custodians("8904528fef4d4578b44f71a80188f400").unifiedGroupSources()
	.buildRequest()
	.post(unifiedGroupSource);

```