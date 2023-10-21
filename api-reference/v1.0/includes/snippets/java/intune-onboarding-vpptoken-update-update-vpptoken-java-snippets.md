---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VppToken vppToken = new VppToken();
vppToken.organizationName = "Organization Name value";
vppToken.vppTokenAccountType = VppTokenAccountType.EDUCATION;
vppToken.appleId = "Apple Id value";
vppToken.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");
vppToken.lastSyncDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:02:49.3205976+00:00");
vppToken.token = "Token value";
vppToken.state = VppTokenState.VALID;
vppToken.lastSyncStatus = VppTokenSyncStatus.IN_PROGRESS;
vppToken.automaticallyUpdateApps = true;
vppToken.countryOrRegion = "Country Or Region value";

graphClient.deviceAppManagement().vppTokens("{vppTokenId}")
	.buildRequest()
	.patch(vppToken);

```