---
title: "Get sensorCandidateActivationConfiguration"
description: "Read the properties and relationships of microsoft.graph.security.sensorCandidateActivationConfiguration object."
author: "SamuelBenichou"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get sensorCandidateActivationConfiguration

Namespace: microsoft.graph.security

Read the properties and relationships of [microsoft.graph.security.sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensorcandidateactivationconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensorcandidateactivationconfiguration-get-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/sensorCandidateActivationConfiguration
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_sensorcandidateactivationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/identities/sensorCandidateActivationConfiguration
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensorCandidateActivationConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.sensorCandidateActivationConfiguration",
    "activationMode": "manual"
  }
}
```
