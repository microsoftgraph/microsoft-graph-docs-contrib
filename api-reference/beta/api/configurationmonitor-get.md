---
title: "Get configurationMonitor"
description: "Get the properties and relationships of a configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: apiPageType
---

# Get configurationMonitor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [configurationMonitor](../resources/configurationmonitor.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmonitor-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmonitor-get-permissions.md)]

## HTTP request

To get the details of any particular monitor:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitors/{configurationMonitorId}
```

>**Note:** Replace `configurationMonitorId` with the monitor ID for which you want to get the details.

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationMonitor](../resources/configurationmonitor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_configurationmonitor"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors/b166c9cb-db29-438b-95fb-247da1dc72c3
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.configurationMonitor"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "fe082480-bdc2-a90c-25f8-4c7fb2fe2f81",
    "displayName": "Demo Monitor",
    "description": "This is a demo monitor.",
    "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
    "status": "active",
    "monitorRunFrequencyInHours": 6,
    "mode": "monitorOnly",
    "createdBy": {
      "user": {
        "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
        "displayName": "System Administrator"
      }
    },
    "createdDateTime": "2024-12-12T09:52:18.7982733Z",
    "lastModifiedDateTime": "2024-12-12T09:52:18.7982733Z",
    "parameters": {
      "FQDN": "contoso.onmicrosoft.com",
      "TenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843"
    }
  }
}
```
