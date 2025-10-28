---
title: "agentIdentityBlueprintPrincipal: createPasswordSingleSignOnCredentials"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# agentIdentityBlueprintPrincipal: createPasswordSingleSignOnCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-createpasswordsinglesignoncredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-createpasswordsinglesignoncredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /riskyAgentIdentityBlueprintPrincipal/agentIdentityBlueprintPrincipal/createPasswordSingleSignOnCredentials
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|credentials|[credential](../resources/credential.md) collection|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "agentidentityblueprintprincipalthis.createpasswordsinglesignoncredentials"
}
-->
``` http
POST https://graph.microsoft.com/beta/riskyAgentIdentityBlueprintPrincipal/agentIdentityBlueprintPrincipal/createPasswordSingleSignOnCredentials
Content-Type: application/json

{
  "id": "String",
  "credentials": [
    {
      "@odata.type": "microsoft.graph.credential"
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordSingleSignOnCredentialSet"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.passwordSingleSignOnCredentialSet"
  }
}
```

