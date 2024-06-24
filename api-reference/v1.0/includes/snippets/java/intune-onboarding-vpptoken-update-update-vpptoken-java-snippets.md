---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VppToken vppToken = new VppToken();
vppToken.setOdataType("#microsoft.graph.vppToken");
vppToken.setOrganizationName("Organization Name value");
vppToken.setVppTokenAccountType(VppTokenAccountType.Education);
vppToken.setAppleId("Apple Id value");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-12-31T23:57:57.2481234-08:00");
vppToken.setExpirationDateTime(expirationDateTime);
OffsetDateTime lastSyncDateTime = OffsetDateTime.parse("2017-01-01T00:02:49.3205976-08:00");
vppToken.setLastSyncDateTime(lastSyncDateTime);
vppToken.setToken("Token value");
vppToken.setState(VppTokenState.Valid);
vppToken.setLastSyncStatus(VppTokenSyncStatus.InProgress);
vppToken.setAutomaticallyUpdateApps(true);
vppToken.setCountryOrRegion("Country Or Region value");
VppToken result = graphClient.deviceAppManagement().vppTokens().byVppTokenId("{vppToken-id}").patch(vppToken);


```