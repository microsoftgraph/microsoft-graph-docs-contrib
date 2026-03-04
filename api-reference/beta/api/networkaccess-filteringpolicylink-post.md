---
title: "Add policy to filteringProfile"
description: "Add a Global Secure Access network policy to a filteringProfile"
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Add policy to filteringProfile

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a Global Secure Access network policy to a [filteringProfile](../resources/networkaccess-filteringprofile.md). The policy can be one of the following types:

- [filteringPolicy](../resources/networkaccess-filteringpolicy.md)
- [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md)
- [tlsInspectionPolicy](../resources/networkaccess-tlsinspectionpolicy.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-filteringpolicylink-post-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-filteringpolicylink-post-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object.

You can specify the following properties when creating a **policy**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the policy. Required.|
|description|String|A description of the policy. Optional.|
|version|String|The version of the policy, used for tracking changes. Required.|



## Response

If successful, this method returns a `204 No Content` response code and a [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md) object in the response body.

## Examples

### Example 1: Add a filteringPolicy to a filteringProfile

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_policy_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "name": "Threat Intel Policy",
  "description": "",
  "version": "1.0.0",
  "settings": {
    "defaultAction": "allow"
  }
}
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policy"
}
-->
```http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "id": "a8352c78-90c6-4edd-aaca-9dc4292e7750",
  "name": "Threat Intel Policy",
  "description": "",
  "version": "1.0.0",
  "lastModifiedDateTime": "2025-06-18T17:34:25.8207682Z",
  "settings": {
    "defaultAction": "allow"
  }
}
```

### Example 2: Add a tlsInspectionPolicy to a filteringProfile

#### Request

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

#### Response

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
    "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionPolicy",
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

