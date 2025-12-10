---
title: "Attach environment"
description: "Create a new environment object."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Attach environment

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Attach an [Environment](../resources/security-Environment.md) object to a [Zone](../resources/security-zone.md) object by providing the EnvironmentId.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-zone-post-environments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-zone-post-environments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/zones/{zoneId}/environments
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.environment](../resources/security-environment.md) object.

You can specify the following properties when creating a **environment**.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Environment identifier. Required.|
|kind|([microsoft.graph.security.environmentKind](../resources/enums-security-environmentKind.md))|Environment type. The possible values are: `azureSubscription`, `awsOrganization`, `awsAccount`, `gcpOrganization`, `gcpProject`, `dockersHubOrganization`, `devOpsConnection`, `azureDevOpsOrganization`, `gitHubOrganization`, `gitLabGroup`, `jFrogArtifactory`, `unknownFutureValue`. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.environment](../resources/security-environment.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_environment_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/zones/{zoneId}/environments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.environment",
  "kind": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.environment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.environment",
  "id": "23613f44-7f57-d1fc-b9a4-448cd3e8c7c3",
  "kind": "String"
}
```

