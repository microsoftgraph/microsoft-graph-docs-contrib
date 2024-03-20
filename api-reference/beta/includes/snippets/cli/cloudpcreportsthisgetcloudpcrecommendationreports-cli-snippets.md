---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint reports get-cloud-pc-recommendation-reports post --body '{\
  "reportName": "cloudPcUsageCategoryReports",\
  "top": 50,\
  "skip": 0,\
  "search": "",\
  "filter": "",\
  "select": [\
    "CloudPcId",\
    "ManagedDeviceName",\
    "UserPrincipalName",\
    "UsageInsight",\
    "CurrentSize",\
    "RecommendedSize",\
    "UsageInHour",\
    "DevicePerfSummary"\
  ],\
  "orderBy": [\
    "ManagedDeviceName"\
  ]\
}\
'

```