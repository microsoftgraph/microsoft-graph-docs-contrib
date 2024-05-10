---
title: "List protectionPolicyBase"
description: "List all protectionPolicies in a tenant"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List protectionPolicyBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the protectionPolicies available in a tenant.
Read the properties and relationships of a [protectionPolicyBase](../resources/protectionpolicybase.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "protectionpolicybase-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/protectionpolicybase-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/protectionPolicies
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

If successful, this method returns a `200 OK` response code and a [protectionPolicyBase](../resources/protectionpolicybase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_protectionpolicybase"
}
-->
``` http
GET /solutions/backupRestore/ProtectionPolicies
Authorization: Bearer <Access-Token>
Odata-Version: 4.0
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.protectionPolicyBase"
}
-->
``` http
HTTP/1.1 200 OK
Content–Type: application / json
Content-Location: /solutions/backupRestore/ProtectionPolicies
Odata–Version: 4.0

{
  "@odata.context": "/solutions/backupRestore/$metadata#ProtectionPolicies",
  "@odata.nextLink": "/solutions/backuprestore/ProtectionPolicies?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "values": [
    {
      "@odata.type": "#microsoft.graph.sharePointProtectionPolicy",
      "id": "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
      "displayName": "SharePoint Protection Policy",
      "status": "inactive",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "def@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "DEF"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z",
      "retentionSettings": [
        {
          "interval": "R/PT10M",
          "period": "P2W"
        },
        {
          "interval": "R/P1W",
          "period": "P1Y"
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.exchangeProtectionPolicy",
      "id": "945457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "Exchange Protection Policy",
      "status": "active",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "def@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "DEF"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z",
      "retentionSettings": [
        {
          "interval": "R/PT10M",
          "period": "P2W"
        },
        {
          "interval": "R/P1W",
          "period": "P1Y"
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.oneDriveForBusinessProtectionPolicy",
      "id": "785457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "OneDrive Protection",
      "status": "updating",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "def@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "DEF"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z",
      "retentionSettings": [
        {
          "interval": "R/PT10M",
          "period": "P2W"
        },
        {
          "interval": "R/P1W",
          "period": "P1Y"
        }
      ]
    }
  ]
}
```

