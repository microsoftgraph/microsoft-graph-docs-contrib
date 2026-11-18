---
title: "Create sharePointProtectionPolicy"
description: "Create a protection policy for a M365 service SharePoint"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Create sharePointProtectionPolicy

Namespace: microsoft.graph

Create a protection policy for a M365 service SharePoint. Policy will be created in `inactive` state. User can also provide a list of protection units under the policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_post_sharepointprotectionpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-sharepointprotectionpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/sharePointProtectionPolicies/
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

You can specify the following properties when creating a **sharePointProtectionPolicy** object.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the SharePoint Protection Policy. Optional.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Retention settings for the policy. Optional. If omitted, the default retention period is 365 days.|
|siteProtectionUnits|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|Collection of the siteProtectionUnits to be added to the sharePointProtectionPolicy object. Required. Refer to [site](../resources/site.md) for the format of siteId.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) object in the response body.

The service returns the complete **retentionSettings** collection, rather than echoing the request collection. The response includes a fixed 14-day period (`P14D`) for the `R/PT10M` interval and the configured policy retention period for the `R/P1W` interval. The 14-day period is a service-defined backup tier, not a supported policy retention period for create or update requests.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows how to create a policy with a retention period of 180 days.

<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_create"
}
-->

```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies
Content-Type: application/json

{
  "displayName": "SharePoint Protection Policy",
  "retentionSettings": [
    {
      "interval": "R/P1W",
      "period": "P180D"
    }
  ],
  "siteProtectionUnits": [
    {
      "siteId": "contoso.sharepoint.com,febad3c2-a7b2-454c-8910-272c7bcf78fc,ba7b70d0-8ba0-4cae-b19a-7cb8c739512f"
    },
    {
      "siteId": "contoso.sharepoint.com/sites/marketing,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
    },
    {
      "siteId": "contoso.sharepoint.com/sites/hr,3bfc861e-9a17-4a27-9562-3d8b26c81bb5,0271110f-634f-4300-a841-3a8a2e851851"
    }
  ]
}
```

### Response

The following example shows the response with the retention settings for both backup intervals, including the requested 180-day retention period.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointProtectionPolicy"
}
-->

```http
HTTP/1.1 201 Created
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionPolicies/b218eb4a-ea72-42bd-8f0b-d0bbf794bec7

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
      "email": "User1@contoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "User1"
    }
  },
  "createdDateTime": "2015-06-19T12:01:03.45Z",
  "lastModifiedBy": {
    "application": {
      "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "displayName": "Microsoft Enhanced Restore"
    },
    "user": {
      "email": "User2@constoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "User2"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
  "retentionSettings": [
    {
      "interval": "R/PT10M",
      "period": "P14D"
    },
    {
      "interval": "R/P1W",
      "period": "P180D"
    }
  ]
}
```
