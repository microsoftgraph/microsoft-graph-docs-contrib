---
title: "industryDataRun: start"
description: "Start a new industryDataRun."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# industryDataRun: start

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start a new [industryDataRun](../resources/industrydata-industrydatarun.md). Industry data automates a run every 12 hours; however, users can use the start action to perform an on-demand run. The industry data service throttles the start of runs, allowing up to five successful runs every 12 hours. An on-demand run causes the next system-scheduled run to be skipped if it is set to run within the next 10 hours.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata_industrydatarun_start"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydatarun-start-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/runs/start
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code. The response also contains a `Location` header, which contains the location of the [longRunningOperation(../resources/longrunningoperation.md). To check the status of this long-running operation, make a GET request to the location URL.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "industrydatarunthis.start"
}
-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/external/industryData/runs/start
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/external/industryData/operations/171bf0b4-14e9-408f-71dd-08dcd2a15d23
```
