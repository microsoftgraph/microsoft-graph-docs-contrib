---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management mobile-apps patch --mobile-app-id {mobileApp-id} --body '{\
  "@odata.type": "#microsoft.graph.managedAndroidLobApp",\
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
  "appAvailability": "lineOfBusiness",\
  "version": "Version value",\
  "committedContentVersion": "Committed Content Version value",\
  "fileName": "File Name value",\
  "size": 4,\
  "packageId": "Package Id value",\
  "minimumSupportedOperatingSystem": {\
    "@odata.type": "microsoft.graph.androidMinimumOperatingSystem",\
    "v4_0": true,\
    "v4_0_3": true,\
    "v4_1": true,\
    "v4_2": true,\
    "v4_3": true,\
    "v4_4": true,\
    "v5_0": true,\
    "v5_1": true,\
    "v6_0": true,\
    "v7_0": true,\
    "v7_1": true,\
    "v8_0": true,\
    "v8_1": true,\
    "v9_0": true,\
    "v10_0": true,\
    "v11_0": true\
  },\
  "versionName": "Version Name value",\
  "versionCode": "Version Code value"\
}\
'

```