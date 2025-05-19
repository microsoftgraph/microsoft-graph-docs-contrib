---
title: "List configurationMonitor objects"
description: "Get a list of the configurationMonitor objects and their properties."
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List configurationMonitor objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the configurationMonitor objects and their properties.

The API is available only in the public cloud.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "configurationmanagement-list-configurationmonitors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/configurationmanagement-list-configurationmonitors-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/configurationManagement/configurationMonitors
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [configurationMonitor](../resources/configurationmonitor.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_configurationmonitor"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.configurationMonitor",
      "id": "fe082480-bdc2-a90c-25f8-4c7fb2fe2f81",
      "displayName": "String",
      "description": "String",
      "tenantId": "String",
      "status": "String",
      "monitorRunFrequencyInHours": "Integer",
      "mode": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "runningOnBehalfOf": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "parameters": {
        "@odata.type": "microsoft.graph.openComplexDictionaryType"
      }
    }
  ]
}
```
**Example 1**: Get the list of all existing configurationMonitors

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_configurationmonitor"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/configurationManagement/configurationMonitors
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationMonitors",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationMonitors?$select=createdBy,createdDateTime",
    "value": [
        {
            "id": "bf77ee1e-7750-40cb-8bcd-524dc4cdab02",
            "displayName": "Demo Monitor",
            "description": "This is a Monitor with EXO resources",
            "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
            "status": "active",
            "monitorRunFrequencyInHours": 6,
            "mode": "monitorOnly",
            "createdDateTime": "2024-12-12T09:52:18.7982733Z",
            "lastModifiedDateTime": "2024-12-12T09:52:18.8274415Z",
            "createdBy": {
                "user": {
                    "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
                    "displayName": "System Administrator"
                }
            },
            "parameters": {
                "FQDN": "contoso.onmicrosoft.com",
                "TenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843"
            }
        },
        {
            "id": "b166c9cb-db29-438b-95fb-247da1dc72c3",
            "displayName": "Demo Monitor 1",
            "description": "It is a monitor that is monitoring all accepted domains of the tenant",
            "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
            "status": "active",
            "monitorRunFrequencyInHours": 6,
            "mode": "monitorOnly",
            "createdDateTime": "2024-12-12T05:24:01.9729016Z",
            "lastModifiedDateTime": "2024-12-12T05:24:02.030975Z",
            "createdBy": {
                "user": {
                    "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
                    "displayName": "System Administrator"
                }
            },
            "parameters": {
                "FQDN": "contoso.onmicrosoft.com",
                "TenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843"
            }
        },
        {
            "id": "a1cbec62-453e-421f-94b5-7a4288bc122a",
            "displayName": "Sample Monitor",
            "description": "Sample EXO Monitor with SharedMailbox AcceptedDomain and MailContact",
            "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
            "status": "active",
            "monitorRunFrequencyInHours": 6,
            "mode": "monitorOnly",
            "createdDateTime": "2024-12-11T05:50:42.6436339Z",
            "lastModifiedDateTime": "2024-12-11T05:50:42.6974645Z",
            "createdBy": {
                "user": {
                    "id": "823da47e-fc25-48d8-8b5a-6186c760f0df",
                    "displayName": "System Administrator"
                }
            },
            "parameters": {
                "FQDN": "contoso.onmicrosoft.com",
                "TenantId": "2fcf1c68-b412-4c85-bfb2-cb20152a6843"
            }
        }
    ]
}
```
