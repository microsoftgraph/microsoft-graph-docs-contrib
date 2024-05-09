---
title: "sharePointProtectionPolicy: Create"
description: "Create the Protection Policy for a M365 service Sharepoint"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# sharePointProtectionPolicy: create

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Policy will be created in 'inactive' state. User can also provide a list of Protection Units under the policy.

Refer to [site](../resources/site.md) for the format of siteId.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointprotectionpolicy-create-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-create-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/sharePointProtectionPolicies/
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

You can specify the following properties when creating a **sharePointProtectionPolicy**.

```json
{
  "displayName": "String",
  "siteProtectionUnits": [
    {
      "siteId": "String"
    },
    {
      "siteId": "String"
    }
  ]
}
```

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the SharePoint Protection Policy.|
|siteProtectionUnits|Collection([siteProtectionUnit](../resources/siteprotectionunit.md))|Collection of the siteProtectionUnits to be added to the sharePointProtectionPolicy.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy.create"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies
Authorization: Bearer <Access-Token>
Odata-Version: 4.0
Content-Type: application/json 
Accept: application/json
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.sharePointProtectionPolicy"
}
-->

``` http
HTTP/1.1 201 Created
Content–Type: application / json
Content-Location: solutions/backupRestore/ProtectionPolicies/b218eb4a-ea72-42bd-8f0b-d0bbf794bec7
Odata – Version: 4.0

{
  "@odata.context": " /solutions/backupRestore/$metadata#sharePointProtectionPolicies/$entity",
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
      "email": "def@constoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "DEF"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12-01-03.45Z",
  "retentionSettings": [
    {
      //Keep the per 10 minute copies for 14 days
      "interval": "R/PT10M",
      "period": "P2W"
    },
    {
      //Keep the per week copies for 1 year
      "interval": "R/P1W",
      "period": "P1Y"
    }
  ]
}
```

