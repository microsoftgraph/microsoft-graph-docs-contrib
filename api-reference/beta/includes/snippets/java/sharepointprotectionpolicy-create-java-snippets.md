---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointProtectionPolicy sharePointProtectionPolicy = new SharePointProtectionPolicy();
sharePointProtectionPolicy.setDisplayName("SharePoint Protection Policy");
LinkedList<SiteProtectionUnit> siteProtectionUnits = new LinkedList<SiteProtectionUnit>();
SiteProtectionUnit siteProtectionUnit = new SiteProtectionUnit();
siteProtectionUnit.setSiteId("contoso.sharepoint.com,febad3c2-a7b2-454c-8910-272c7bcf78fc,ba7b70d0-8ba0-4cae-b19a-7cb8c739512f");
siteProtectionUnits.add(siteProtectionUnit);
SiteProtectionUnit siteProtectionUnit1 = new SiteProtectionUnit();
siteProtectionUnit1.setSiteId("contoso.sharepoint.com/sites/marketing,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740");
siteProtectionUnits.add(siteProtectionUnit1);
SiteProtectionUnit siteProtectionUnit2 = new SiteProtectionUnit();
siteProtectionUnit2.setSiteId("contoso.sharepoint.com/sites/hr,3bfc861e-9a17-4a27-9562-3d8b26c81bb5,0271110f-634f-4300-a841-3a8a2e851851");
siteProtectionUnits.add(siteProtectionUnit2);
sharePointProtectionPolicy.setSiteProtectionUnits(siteProtectionUnits);
SharePointProtectionPolicy result = graphClient.solutions().backupRestore().sharePointProtectionPolicies().post(sharePointProtectionPolicy);


```