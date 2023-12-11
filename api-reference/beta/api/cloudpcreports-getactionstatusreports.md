---
title: "cloudPcReports: getActionStatusReports"
description: "Get the remote actions status reports including CloudPcId,CloudPCDeviceDisplayName, InitiatedByUserPrincipalName,DeviceOwnerUserPrincipalName, Action, ActionState and so on."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getActionStatusReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the remote actions status reports including CloudPcId,CloudPCDeviceDisplayName, InitiatedByUserPrincipalName,DeviceOwnerUserPrincipalName, Action, ActionState and so on.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CloudPC.Read.All, CloudPC.ReadWrite.All     |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getActionStatusReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                |
|:----------|:------------------|:-------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Only `and`, `or`, `gt` ,`ge` and `eq` are currently supported.     |
| select    | String collection | OData `$select` syntax. Represents the selected columns of the reports.                    |
| search    | String            | Specifies a String to search for.                                                          |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the select parameter.|
| orderBy   | String collection | Specifies the order by columns name. The default orderBy column is RequestDateTime.        |
| skip      | Int32             | Number of records to skip.                                                                 |
| top       | Int32             | The number of top records to return, if not defined the default top is 25 and max is 100.  |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.getActionStatusReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getActionStatusReports
Content-Type: application/json
Content-length: 199

{
    "filter": "ActionState eq 'failed'",
    "select":["Id", "CloudPcDeviceDisplayName", "BulkActionId", "BulkActionDisplayName", "CloudPcId", "InitiatedByUserPrincipalName","DeviceOwnerUserPrincipalName", "Action", "ActionState", "RequestDateTime", "LastUpdatedDateTime", "ActionParameters"],
    "skip": 0,
    "top": 50
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
    "TotalRowCount": 1,
    "Schema": [
        {
            "Column": "Id",
            "PropertyType": "String"
        }
        {
            "Column": "CloudPcDeviceDisplayName",
            "PropertyType": "String"
        },
        {
            "Column": "BulkActionId",
            "PropertyType": "String"
        },
        {
            "Column": "BulkActionDisplayName",
            "PropertyType": "String"
        },
        {
            "Column": "CloudPcId",
            "PropertyType": "String"
        },
        {
            "Column": "InitiatedByUserPrincipalName",
            "PropertyType": "String"
        },
        {
            "Column": "DeviceOwnerUserPrincipalName",
            "PropertyType": "String"
        },
        {
            "Column": "Action",
            "PropertyType": "String"
        },
        {
            "Column": "ActionState",
            "PropertyType": "String"
        },
        {
            "Column": "RequestDateTime",
            "PropertyType": "DateTime"
        },
        {
            "Column": "LastUpdatedDateTime",
            "PropertyType": "DateTime"
        },
        {
            "Column": "ActionParameters",
            "PropertyType": "Json"
        }],
    "Values": [
        ["662009bc-7732-4f6f-8726-25883518b33e", "CloudPC-Connie", "bdc8e6dd-0455-4412-83d9-c818664fe1f1", "Resize to 64GB RAM - John", "bdc8e6dd-0455-4412-83d9-c818664fe1f1", "john@cpccustomer001.onmicrosoft.com", "connie@cpccustomer001.onmicrosoft.com", "Resize", "failed", "2020-07-23T10:10:57Z", "2023-07-23T18:14:34Z", "{"targetServicePlanId": "3bba9856-7cf2-4396-904a-00de74fba3a4"}"]
    ]
}
```

