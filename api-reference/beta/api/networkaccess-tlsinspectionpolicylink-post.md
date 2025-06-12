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

Create a new [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) to connect a filtering profile with a TLS inspection policy. One 1 TLS inspection policy is allowed for every filtering profile.

## Permissions

One of these permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-tlsinspectionpolicylink-post-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlsinspectionpolicylink-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [tlsInspectionPolicyLink](../resources/networkaccess-tlsinspectionpolicylink.md) object.

|Property|Type|Description|
|:---|:---|:---|
|state|microsoft.graph.networkaccess.status|The state of the policy link. The possible values are: `enabled`, `disabled`, `unknownFutureValue`. Required.|
|policy|[microsoft.graph.networkaccess.tlsInspectionPolicy](../resources/networkaccess-intune-policy.md)|The TLS inspection policy to be linked. Supply the policy object with its ID. Required.|

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
``` http
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
``` http
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

