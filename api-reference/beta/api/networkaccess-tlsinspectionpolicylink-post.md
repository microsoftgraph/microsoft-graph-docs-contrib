---
title: "Create tlsInspectionPolicyLink"
description: "Create a new link between a filtering profile and a TLS inspection policy."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create tlsInspectionPolicyLink

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) to connect a filtering profile with a [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md). One 1 [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md) is allowed for every filtering profile.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlsinspectionpolicylink_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicylink-post-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) object.

You can specify the following properties when creating a **tlsInspectionPolicyLink**.

|Property|Type|Description|
|:---|:---|:---|
|policy|[microsoft.graph.networkaccess.tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md)|The TLS inspection policy to be linked. Supply only the **id** of the policy. Required.|
|state|microsoft.graph.networkaccess.status|The state of the policy link. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_tlsinspectionpolicylink",
  "sampleKeys": ["d734d2de-f2df-4b4a-8c4c-5111f8878275"]
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
  "state": "enabled",
  "policy": {
    "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicy",
    "id": "b712c469-e7cd-e7cb-738f-94b199570b0d"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionPolicyLink"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
  "id": "70405a6c-b823-c521-c981-de9d08a21f8f",
  "state": "enabled",
  "version": "1.0",
  "policy": {
    "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicyPolicy",
    "id": "b712c469-e7cd-e7cb-738f-94b199570b0d",
    "name": "Default TLS Inspection Policy",
    "description": "Policy for inspecting TLS traffic",
    "version": "1.0.0",
    "lastModifiedDateTime": "2025-06-02T20:54:19.146638Z",
    "settings": {
        "defaultAction": "bypass"
    }
  }
}
```
