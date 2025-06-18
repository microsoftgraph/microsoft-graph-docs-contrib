---
title: "Update threatIntelligencePolicy"
description: "Update the properties of a threatIntelligencePolicy object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Update threatIntelligencePolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a threatIntelligencePolicy object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/threatIntelligencePolicies/{threatIntelligencePolicyId}
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
|name|String|The display name of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|description|String|A description of the threat intelligence policy. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Optional.|
|version|String|The version of the policy, used for tracking changes. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|kind|String|The kind of policy. For threat intelligence policies, this will be a specific value denoting the threat intelligence type. Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. Required.|
|settings|[microsoft.graph.networkaccess.threatIntelligencePolicySettings](../resources/networkaccess-threatintelligencepolicysettings.md)|Settings that define how the threat intelligence policy operates and evaluates threats. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_threatintelligencepolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/threatIntelligencePolicies/{threatIntelligencePolicyId}
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


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

