---
title: "List enrichedAuditLogs"
description: "Retrieve the enriched audit logs status for the configured workloads, providing access to comprehensive data that includes the original audit logs from partners such as SharePoint, Teams, and Exchange."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List enrichedAuditLogs
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the enriched audit logs status for the configured workloads, providing access to comprehensive data that includes the original audit logs from partners such as SharePoint, Teams, and Exchange.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkaccess/settings/enrichedAuditLogs
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_enrichedauditlogs"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/settings/enrichedAuditLogs
```


### Response
The following is an example of the response.
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
        "status": "enabled"
      },
      "teams": {
        "status": "enabled"
      },
      "exchange": {
        "status": "disabled"
      }
    }
  ]
}
```

