---
title: "Update certificateBasedAuthPki"
description: "Update the properties of a certificateBasedAuthPki object."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update certificateBasedAuthPki

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificatebasedauthpki-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}
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
|deletedDateTime|DateTimeOffset|The date and time when the object was soft deleted. This value is `null` for objects that are not deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|displayName|String|The name of the certificateBasedAuthPki object. Optional.|
|status|String|The status of any asynchronous jobs run on the certificateBasedAuthPki object which can be uploaded or deleted. Optional.|
|statusDetails|String|The status details of the upload/deleted operation of PKI(Public Key Infrastructure). Optional.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the certificateBasedAuthPki object was created or last modified. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [certificateBasedAuthPki](../resources/certificatebasedauthpki.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_certificatebasedauthpki"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "status": "String",
  "statusDetails": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateBasedAuthPki"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateBasedAuthPki",
  "id": "c721dc42-b383-e883-bf80-2d539946cf8c",
  "deletedDateTime": "String (timestamp)",
  "displayName": "String",
  "status": "String",
  "statusDetails": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

