---
title: "Get auditLogQuery"
description: "Read the properties and relationships of an auditLogQuery object."
author: "arishojaswi"
ms.localizationpriority: medium
ms.prod: "auditlogquery"
doc_type: apiPageType
---

# Get auditLogQuery
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [auditLogQuery](../resources/security-auditlogquery.md) object.

## Permissions
Through the Audit Search Graph API, auditing data can be accessed using the following permissions which are classified at a Microsoft 365 service level. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Microsoft 365 Service|Delegated (work or school account)|Delegated (personal Microsoft account)|Application
|:---|:---|:---|:---|
|OneDrive|AuditLogsQuery-OneDrive.Read.All|Not supported|AuditLogsQuery-OneDrive.Read.All|
|Exchange|AuditLogsQuery-Exchange.Read.All|Not supported|AuditLogsQuery-Exchange.Read.All|
|SharePoint|AuditLogsQuery-SharePoint.Read.All|Not supported|AuditLogsQuery-SharePoint.Read.All|
|Endpoint|AuditLogsQuery-Endpoint.Read.All|Not supported|AuditLogsQuery-Endpoint.Read.All|
|Dynamics CRM|AuditLogsQuery-CRM.Read.All|Not supported|AuditLogsQuery-CRM.Read.All|
|Entra|AuditLogsQuery-Entra.Read.All|Not supported|AuditLogsQuery-Entra.Read.All|
|All Audit Logs|AuditLogsQuery.Read.All|Not supported|AuditLogsQuery.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/auditCore/auditLogQueries/{auditLogQueryId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.auditLogQuery](../resources/security-auditlogquery.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_auditlogquery"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/auditCore/auditLogQueries/{auditLogQueryId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.auditLogQuery"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.auditLogQuery",
    "id": "168ec429-084b-a489-90d8-504a87846305",
    "displayName": "String",
    "filterStartDateTime": "String (timestamp)",
    "filterEndDateTime": "String (timestamp)",
    "recordTypeFilter": "String",
    "keywordFilter": "String",
    "serviceFilter": "String",
    "operationFilters": [
      "String"
    ],
    "userPrincipalNameFilters": [
      "String"
    ],
    "ipAddressFilters": [
      "String"
    ],
    "objectIdFilters": [
      "String"
    ],
    "administrativeUnitIdFilters": [
      "String"
    ],
    "status": "String"
  }
}
```

