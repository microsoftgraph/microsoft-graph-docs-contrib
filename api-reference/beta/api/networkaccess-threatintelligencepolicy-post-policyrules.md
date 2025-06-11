---
title: "Create policyRule"
description: "Create a new policyRule object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create policyRule

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new policyRule object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-threatintelligencepolicy-post-policyrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicy-post-policyrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.

You can specify the following properties when creating a **policyRule**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the policy rule. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_policyrule_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "name": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policyRule"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "id": "92bc5f58-a28b-94ee-0caa-92c81e446163",
  "name": "String"
}
```

