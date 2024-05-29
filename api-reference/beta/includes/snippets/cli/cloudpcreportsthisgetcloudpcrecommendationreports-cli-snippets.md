---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


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