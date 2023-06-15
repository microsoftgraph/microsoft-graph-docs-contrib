---
title: "List enrichedAuditLogs"
description: "Allows developers to retrieve the enriched audit logs for the configured workloads. This API call provides a way to access the comprehensive enriched audit logs data, including the original audit logs from partners such as SharePoint, Teams, and Exchange"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List enrichedAuditLogs
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference):

* Global reader
* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.networkaccess.enrichedAuditLogs not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [enrichedAuditLogs](../resources/enrichedauditlogs.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_enrichedauditlogs"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.networkaccess.enrichedAuditLogs not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.enrichedAuditLogs)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.enrichedAuditLogs",
      "id": "c477a530-2fe6-302f-79d5-f908851eae6e",
      "sharepoint": {
        "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
      },
      "teams": {
        "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
      },
      "exchange": {
        "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogsSettings"
      }
    }
  ]
}
```

