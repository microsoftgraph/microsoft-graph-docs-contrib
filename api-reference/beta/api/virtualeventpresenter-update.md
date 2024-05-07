---
title: "Update presenter"
description: "Update the properties of a virtualEventPresenter object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Update presenter
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualEventPresenter](../resources/virtualeventpresenter.md) object.

Currently the supported virtual event type is: [virtualEventWebinar](../resources/virtualeventwebinar.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventpresenter-update-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventpresenter-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/virtualEvents/webinars/{webinarId}/presenters/{presenterId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
| presenterDetails|[virtualEventPresenterDetails](../resources/virtualeventpresenterdetails.md) | Other detail information of the presenter. |

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
PATCH https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be/presenters/831affc2-4c8a-9929-50e7-02964563b6e4
Content-Type: application/json
{
    "bio": {
        "content": "Lead Product Manager of Contoso Sales department",
        "contentType": "text"
    },
    "company": "Contoso",
    "jobTitle": "Product Manager",
    "linkedInProfileWebUrl": "https://linkedin.com/in/DianeDemoss",
    "personalSiteWebUrl": "https://DianeDemoss.com"
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
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.virtualEventPresenter",
  "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
  "identity": {
    "@odata.type": "microsoft.graph.communicationsUserIdentity",
    "displayName": "Diane Demoss",
    "id": "831affc2-4c8a-9929-50e7-02964563b6e4",
    "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
  },
  "email": "DianeDemoss@contoso.com",
  "presenterDetails": {
    "company": "Contoso",
    "jobTitle": "Product Manager",
    "personalSiteWebUrl": "https://DianeDemoss.com",
    "linkedInProfileWebUrl": "https://linkedin.com/in/DianeDemoss",
    "twitterProfileWebUrl": null,
    "bio": {
      "content": "Lead Product Manager of Contoso Sales department",
      "contentType": "text"
    }
  }
}
```
