---
title: "Create virtualEventPresenter"
description: "Create a new virtualEventPresenter object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create virtualEventPresenter

Namespace: microsoft.graph



Create a new [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinar-post-presenters-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-post-presenters-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/events/{virtualEventId}/presenters
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

You can specify the following properties when creating a **virtualEventPresenter**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|identity|[identity](../resources/intune-identity.md)|**TODO: Add Description** Optional.|
|email|String|**TODO: Add Description** Optional.|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualeventpresenter_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/events/{virtualEventId}/presenters
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
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventPresenter"
}
-->
``` http
HTTP/1.1 201 Created
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

