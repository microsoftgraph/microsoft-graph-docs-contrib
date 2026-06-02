---
title: "Update mailboxProtectionUnit"
description: "Update the properties of a mailboxProtectionUnit object."
author: "abbhadauria"
ms.reviewer: "haputta"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/04/2026
---

# Update mailboxProtectionUnit

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [mailboxProtectionUnit](../resources/mailboxprotectionunit.md) object.

> [!NOTE]
> This API is currently available only through the Microsoft Graph PowerShell SDK.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxprotectionunit_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxprotectionunit-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /backupRestore/mailboxProtectionUnits/{mailboxProtectionUnitId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

This API supports updates only to the **billingPolicyId** property, and only for protection units removed from backup policies (**policyId** is an empty string `""` or `null`).

In the request body, provide a JSON representation of the following property.

|Property|Type|Description|
|:---|:---|:---|
|billingPolicyId|String|Optional. The unique identifier of the billing policy assigned to the protection unit. You can update this property only when **policyId** is `null` or an empty string (`""`).|

> **Note:** If **policyId** has a value, the protection unit is attached to a protection policy and **billingPolicyId** can't be updated.

## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxProtectionUnit](../resources/mailboxprotectionunit.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Update the billing policy when the protection unit isn't attached to a protection policy

The following example shows how to update the **billingPolicyId** property when the protection unit isn't attached to a protection policy.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "mailboxprotectionunit_update_unattached_policy"
}
-->
```msgraph-interactive
PATCH https://graph.microsoft.com/beta/backupRestore/mailboxProtectionUnits/MjUyZTc3ZDEtM2IyYS00ZGMwLTkzYTMtMjkxZDI3NWZlY2YzXzM=
Content-Type: application/json

{
  "billingPolicyId": "fa3d95b5-2878-4de7-94f5-157f4b7607aa"
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionUnit"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxProtectionUnit",
  "id": "MjUyZTc3ZDEtM2IyYS00ZGMwLTkzYTMtMjkxZDI3NWZlY2YzXzM=",
  "directoryObjectId": "bb1b5307-d650-49cf-88cf-05eaf1b3bb33",
  "displayName": "Exo admin",
  "email": "exoadmin@contoso.com",
  "mailboxType": "user",
  "policyId": "",
  "billingPolicyId": "fa3d95b5-2878-4de7-94f5-157f4b7607aa",
  "createdDateTime": "2026-02-04T06:24:19.5736657Z",
  "createdBy": {
    "user": {
      "identity": "6294dedc-d456-4c78-9b2f-b4bae765fb09"
    }
  },
  "status": "unprotected",
  "protectionSources": "none",
  "lastModifiedDateTime": "2026-02-24T06:44:53.6014453Z",
  "lastModifiedBy": {
    "user": {
      "identity": "6294dedc-d456-4c78-9b2f-b4bae765fb09"
    }
  },
  "offboardRequestedDateTime": "0001-01-01T00:00:00Z"
}
```

### Example 2: Update the billing policy when the protection unit is attached to a protection policy

The following example shows the response you get if you try to update the **billingPolicyId** property when the protection unit is attached to a protection policy.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "mailboxprotectionunit_update_attached_policy_error"
}
-->
```http
PATCH https://graph.microsoft.com/beta/backupRestore/mailboxProtectionUnits/NmFmNTQ2NTUtNTkwYS00YWU2LThkMDQtODRmNDI0OGMwZjU0XzE=
Content-Type: application/json

{
  "billingPolicyId": "f65f082d-a073-4451-9a3b-2355956f2cd7"
}
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.publicError"
}
-->
```http
HTTP/1.1 403 Operation Not Allowed
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.publicError",
  "code": "OperationNotAllowed",
  "message": "Only protection units removed from backup policies are allowed for this API.",
  "target": "billingPolicyId",
  "details": [],
  "innerError": {
    "@odata.type": "#microsoft.graph.publicError",
    "code": "OperationNotAllowed",
    "message": "The protection unit is attached to a backup policy.",
    "target": "policyId",
    "details": [],
    "innerError": null
  }
}
```

## Related content

- [mailboxProtectionUnit](../resources/mailboxprotectionunit.md)
