---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management mobile-apps patch --mobile-app-id {mobileApp-id} --body '{\
  "@odata.type": "#microsoft.graph.microsoftStoreForBusinessApp",\
  "displayName": "Display Name value",\
  "description": "Description value",\
  "publisher": "Publisher value",\
  "largeIcon": {\
    "@odata.type": "microsoft.graph.mimeContent",\
    "type": "Type value",\
    "value": "dmFsdWU="\
  },\
  "isFeatured": true,\
  "privacyInformationUrl": "https://example.com/privacyInformationUrl/",\
  "informationUrl": "https://example.com/informationUrl/",\
  "owner": "Owner value",\
  "developer": "Developer value",\
  "notes": "Notes value",\
  "publishingState": "processing",\
  "usedLicenseCount": 0,\
  "totalLicenseCount": 1,\
  "productKey": "Product Key value",\
  "licenseType": "online",\
  "packageIdentityName": "Package Identity Name value"\
}\
'

```