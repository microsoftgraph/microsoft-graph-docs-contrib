---
title: "Update enrichedAuditLogs"
description: "Update the settings for the enriched audit logs workloads to control the enrichment feature for each partner workload, such as SharePoint, Teams, and Exchange."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update enrichedAuditLogs
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the settings for the enriched audit logs workloads to control the enrichment feature for each partner workload, such as SharePoint, Teams, and Exchange.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/settings/enrichedAuditLogs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|sharepoint|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Sharepoint enrichment log status. Optional.|
|teams|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Teams enrichment log status. Optional.|
|exchange|[microsoft.graph.networkaccess.enrichedAuditLogsSettings](../resources/networkaccess-enrichedauditlogssettings.md)|Exchange enrichment log status. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.enrichedAuditLogs](../resources/networkaccess-enrichedauditlogs.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_enrichedauditlogs"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/settings/enrichedAuditLogs
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.enrichedAuditLogs",
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
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-enrichedauditlogs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-enrichedauditlogs-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-enrichedauditlogs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-enrichedauditlogs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-enrichedauditlogs-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-enrichedauditlogs-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.enrichedAuditLogs"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
```

