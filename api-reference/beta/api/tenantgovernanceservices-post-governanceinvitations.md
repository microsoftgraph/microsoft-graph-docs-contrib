---
title: "Create governanceInvitation"
description: "Create a new governance invitation to establish a relationship with a governed tenant."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create governanceInvitation

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) to establish a governance relationship with a governed tenant. Invitations provide an alternative mechanism to governance requests for initiating relationships.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_post_governanceinvitations" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-post-governanceinvitations-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/tenantGovernance/governanceInvitations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) object.

You can specify the following properties when creating a **governanceInvitation**.

|Property|Type|Description|
|:---|:---|:---|
|governingTenantId|String|The Microsoft Entra tenant ID of the governing tenant. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.tenantGovernanceServices.governanceInvitation](../resources/tenantgovernanceservices-governanceinvitation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_governanceinvitation"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/tenantGovernance/governanceInvitations
Content-Type: application/json

{
  "governingTenantId": "aaaabbbb-0000-cccc-1111-dddd2222eeee"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantGovernanceServices.governanceInvitation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.governanceInvitation",
  "id": "aaaaaaaa-0000-1111-2222-bbbbbbbbbbbb",
  "governingTenantId": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
  "governedTenantId": "bbbbcccc-1111-dddd-2222-eeee3333ffff",
  "governingTenantName": "Contoso, Inc",
  "governedTenantName": "Fabrikam",
  "createdDateTime": "2026-01-01T18:25:09.4212828Z",
  "expirationDateTime": "2026-01-31T18:25:09.4212828Z"
}
```

