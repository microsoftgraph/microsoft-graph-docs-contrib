---
title: "Create threatIntelligencePolicy"
description: "Create a new threatIntelligencePolicy object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create threatIntelligencePolicy

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new threatIntelligencePolicy object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-networkaccessroot-post-threatintelligencepolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-networkaccessroot-post-threatintelligencepolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/threatIntelligencePolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object.

You can specify the following properties when creating a **threatIntelligencePolicy**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Optional.|
|version|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|kind|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policy](../resources/networkaccess-policy.md). Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|settings|[microsoft.graph.networkaccess.threatIntelligencePolicySettings](../resources/networkaccess-threatintelligencepolicysettings.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_threatintelligencepolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/threatIntelligencePolicies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "name": "String",
  "description": "String",
  "version": "String",
  "kind": "String",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligencePolicy",
  "id": "b8521f33-fa6d-a78b-308c-b6dfdf1c1798",
  "name": "String",
  "description": "String",
  "version": "String",
  "kind": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligencePolicySettings"
  }
}
```

