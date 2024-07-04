---
title: "Create virtualEventWebinarRegistrationConfiguration"
description: "Create a new virtualEventWebinarRegistrationConfiguration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create virtualEventWebinarRegistrationConfiguration

Namespace: microsoft.graph



Create a new [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinar-post-registrationconfiguration-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-post-registrationconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.virtualEventWebinarRegistrationConfiguration not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object.

You can specify the following properties when creating a **virtualEventWebinarRegistrationConfiguration**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|registrationWebUrl|String|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). Optional.|
|capacity|Int32|**TODO: Add Description** Inherited from [virtualEventRegistrationConfiguration](../resources/virtualeventregistrationconfiguration.md). Optional.|
|isWaitlistEnabled|Boolean|**TODO: Add Description** Optional.|
|isManualApprovalEnabled|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualeventwebinarregistrationconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0** Collection URI for microsoft.graph.virtualEventWebinarRegistrationConfiguration not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "registrationWebUrl": "String",
  "capacity": "Integer",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventWebinarRegistrationConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventWebinarRegistrationConfiguration",
  "id": "9b69bae9-1ebc-4c1e-1ab3-a712bd4e1e3e",
  "registrationWebUrl": "String",
  "capacity": "Integer",
  "isWaitlistEnabled": "Boolean",
  "isManualApprovalEnabled": "Boolean"
}
```

