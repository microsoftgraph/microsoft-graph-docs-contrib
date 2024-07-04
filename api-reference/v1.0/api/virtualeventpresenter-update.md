---
title: "Update virtualEventPresenter"
description: "Update the properties of a virtualEventPresenter object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventPresenter

Namespace: microsoft.graph



Update the properties of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventpresenter-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/virtualEvents/events/{virtualEventId}/presenters/{virtualEventPresenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|identity|[identity](../resources/intune-identity.md)|**TODO: Add Description** Optional.|
|email|String|**TODO: Add Description** Optional.|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventpresenter"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/solutions/virtualEvents/events/{virtualEventId}/presenters/{virtualEventPresenterId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "identity": {
    "@odata.type": "microsoft.graph.identity"
  },
  "email": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  }
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
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
  "identity": {
    "@odata.type": "microsoft.graph.identity"
  },
  "email": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  }
}
```

