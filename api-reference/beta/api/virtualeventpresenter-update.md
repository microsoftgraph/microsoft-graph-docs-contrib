---
title: "Update virtualEventPresenter"
description: "Update the properties of a virtualEventPresenter object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventPresenter
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
PATCH /me/virtualEvents/webinars/{virtualEventWebinarId}/presenters/{virtualEventPresenterId}
PATCH /users/{usersId}/virtualEvents/webinars/{virtualEventWebinarId}/presenters/{virtualEventPresenterId}
PATCH /me/virtualEvents/webinars/{virtualEventWebinarId}/sessions/{virtualEventSessionId}/presenters/{virtualEventPresenterId}
PATCH /users/{usersId}/virtualEvents/webinars/{virtualEventWebinarId}/sessions/{virtualEventSessionId}/presenters/{virtualEventPresenterId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|identity|[communicationsUserIdentity](../resources/communicationsuseridentity.md)|**TODO: Add Description** Optional.|
|email|String|**TODO: Add Description** Optional.|
|presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md)|**TODO: Add Description** Optional.|
|profilePhoto|Stream|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventPresenter](../resources/virtualeventpresenter.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventpresenter"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/virtualEvents/events/{virtualEventId}/presenters/{virtualEventPresenterId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "identity": {
    "@odata.type": "microsoft.graph.communicationsUserIdentity"
  },
  "email": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  },
  "profilePhoto": "Stream"
}
```


### Response
The following is an example of the response
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
    "@odata.type": "microsoft.graph.communicationsUserIdentity"
  },
  "email": "String",
  "presenterDetails": {
    "@odata.type": "microsoft.graph.virtualEventPresenterDetails"
  },
  "profilePhoto": "Stream"
}
```

