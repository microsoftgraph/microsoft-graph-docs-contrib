---
title: "Update sensorCandidateActivationConfiguration"
description: "Update a sensorCandidateActivationConfiguration object."
author: "SamuelBenichou"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update sensorCandidateActivationConfiguration

Namespace: microsoft.graph.security

Update a [sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identitycontainer-post-sensorcandidateactivationconfiguration-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identitycontainer-post-sensorcandidateactivationconfiguration-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/identities/sensorCandidateActivationConfigurations
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.security.sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md) object.

You can specify the following properties when creating a **sensorCandidateActivationConfiguration**.

|Property|Type| Description                                                                                                |
|:---|:---|:-----------------------------------------------------------------------------------------------------------|
|activationMode|microsoft.graph.security.sensorCandidateActivationMode| The activation mode for the sensor candidate. The possible values are: `manual` and `automated`. Required. |

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_sensorcandidateactivationconfiguration"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/identities/sensorCandidateActivationConfigurations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.sensorCandidateActivationConfiguration",
  "activationMode": "automated"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```