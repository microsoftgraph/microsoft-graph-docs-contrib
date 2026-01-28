---
title: "Update threatIntelligencePolicyLink"
description: "Update the properties of a threatIntelligencePolicyLink object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update threatIntelligencePolicyLink

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_threatintelligencepolicylink_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-update-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|state|microsoft.graph.networkaccess.status|The operational state of the policy link that determines if the threat intelligence policy is actively applied to network traffic. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|
|version|String|The version of the policy link, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.threatIntelligencePolicyLink](../resources/networkaccess-threatintelligencepolicylink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_threatintelligencepolicylink"
}
-->
```http
PATCH https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicyLink",
  "state": "String",
  "version": "String"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

